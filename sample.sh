"use client";

import Link from "next/link";
import { useEffect, useState } from "react";
import api from "../../services/api";

import {
  PieChart,
  Pie,
  Cell,
  Tooltip,
  ResponsiveContainer,
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
} from "recharts";

export default function DashboardPage() {
  const [records, setRecords] = useState<any[]>([]);
  const [user, setUser] = useState<any>(null);

  useEffect(() => {
    loadRecords();
    loadUser();
  }, []);

  async function loadRecords() {
    const response = await api.get("/api/technical/");
    setRecords(response.data);
  }

  async function loadUser() {
    try {
      const response = await api.get("/api/auth/me");
      setUser(response.data);
    } catch (error) {
      console.error(error);
    }
  }

  function logout() {
    localStorage.removeItem("token");
    window.location.href = "/login";
  }

  const totalRecords = records.length;

  const openIssues = records.filter(
    (r) => r.status === "Open"
  ).length;

  const resolvedIssues = records.filter(
    (r) => r.status === "Resolved"
  ).length;

  const today = new Date().toISOString().split("T")[0];

  const activitiesToday = records.filter(
    (r) => r.date === today
  ).length;

  const avgDuration =
    records.length > 0
      ? Math.round(
          records.reduce(
            (sum, r) => sum + (r.duration_minutes || 0),
            0
          ) / records.length
        )
      : 0;

  const topCategory =
    Object.entries(
      records.reduce((acc: any, r: any) => {
        acc[r.category] =
          (acc[r.category] || 0) + 1;
        return acc;
      }, {})
    ).sort(
      (a: any, b: any) =>
        Number(b[1]) - Number(a[1])
    )[0]?.[0] || "N/A";

  const pieData = [
    {
      name: "Open",
      value: openIssues,
    },
    {
      name: "Resolved",
      value: resolvedIssues,
    },
  ];

  const dailyData = Object.values(
    records.reduce((acc: any, record: any) => {
      const date = record.date;

      if (!acc[date]) {
        acc[date] = {
          date,
          count: 0,
        };
      }

      acc[date].count++;

      return acc;
    }, {})
  );

  const recentActivities = [...records]
    .sort((a, b) => b.id - a.id)
    .slice(0, 10);

  return (
    <div className="p-8">
      <div className="flex justify-between items-center mb-8">
        <div>
          <h1 className="text-3xl font-bold">
            TAMS Dashboard
          </h1>

          <p className="text-gray-600">
            Technical Assistance Monitoring System
          </p>
        </div>

        <div className="text-right">
          <div className="font-semibold text-lg">
            {user?.fullname}
          </div>

          <div className="text-gray-500 capitalize">
            {user?.role}
          </div>

          <button
            onClick={logout}
            className="bg-red-600 text-white px-4 py-2 rounded mt-2"
          >
            Logout
          </button>
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-6 gap-4 mb-8">
        <Linknical
          <div className="bg-blue-600 text-white rounded-lg p-6 shadow cursor-pointer hover:scale-105 transition">
            <h2>Total Records</h2>

            <p className="text-4xl font-bold">
              {totalRecords}
            </p>
          </div>
        </Link>

        /technical
          <div className="bg-red-600 text-white rounded-lg p-6 shadow cursor-pointer hover:scale-105 transition">
            <h2>Open Issues</h2>

            <p className="text-4xl font-bold">
              {openIssues}
            </p>
          </div>
        </Link>

        /technical
          <div className="bg-green-600 text-white rounded-lg p-6 shadow cursor-pointer hover:scale-105 transition">
            <h2>Resolved Issues</h2>

            <p className="text-4xl font-bold">
              {resolvedIssues}
            </p>
          </div>
        </Link>

        <div className="bg-purple-600 text-white rounded-lg p-6 shadow">
          <h2>Activities Today</h2>

          <p className="text-4xl font-bold">
            {activitiesToday}
          </p>
        </div>

        <div className="bg-amber-600 text-white rounded-lg p-6 shadow">
          <h2>Avg Duration</h2>

          <p className="text-4xl font-bold">
            {avgDuration}
          </p>
        </div>

        <div className="bg-cyan-600 text-white rounded-lg p-6 shadow">
          <h2>Top Category</h2>

          <p className="text-lg font-bold break-words">
            {topCategory}
          </p>
        </div>
      </div>

      <div className="grid lg:grid-cols-2 gap-6 mb-8">
        <div className="bg-white rounded-lg shadow border p-4">
          <h2 className="text-xl font-bold mb-4">
            Status Distribution
          </h2>

          <ResponsiveContainer
            width="100%"
            height={300}
          >
            <PieChart>
              <Pie
                data={pieData}
                dataKey="value"
                nameKey="name"
                outerRadius={100}
              >
                <Cell fill="#ef4444" />
                <Cell fill="#22c55e" />
              </Pie>

              <Tooltip />
            </PieChart>
          </ResponsiveContainer>
        </div>

        <div className="bg-white rounded-lg shadow border p-4">
          <h2 className="text-xl font-bold mb-4">
            Activities Per Day
          </h2>

          <ResponsiveContainer
            width="100%"
            height={300}
          >
            <BarChart data={dailyData}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="date" />
              <YAxis />
              <Tooltip />
              <Bar
                dataKey="count"
                fill="#2563eb"
              />
            </BarChart>
          </ResponsiveContainer>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow border p-4">
        <h2 className="text-xl font-bold mb-4">
          Recent Activities
        </h2>

        <div className="overflow-x-auto">
          <table className="w-full border">
            <thead>
              <tr className="bg-gray-100">
                <th className="border p-2 text-center">
                  Activity No
                </th>

                <th className="border p-2 text-center">
                  Date
                </th>

                <th className="border p-2 text-center">
                  Location
                </th>

                <th className="border p-2 text-center">
                  Client
                </th>

                <th className="border p-2 text-center">
                  Category
                </th>

                <th className="border p-2 text-center">
                  Status
                </th>
              </tr>
            </thead>

            <tbody>
              {recentActivities.map((record) => (
                <tr key={record.id}>
                  <td className="border p-2 text-center">
                    {record.activity_number}
                  </td>

                  <td className="border p-2 text-center">
                    {record.date}
                  </td>

                  <td className="border p-2 text-center">
                    {record.location}
                  </td>

                  <td className="border p-2 text-center">
                    {record.client_name}
                  </td>

                  <td className="border p-2 text-center">
                    {record.category}
                  </td>

                  <td className="border p-2 text-center">
                    {record.status}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}
