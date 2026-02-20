import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  typescript: {
    ignoreBuildErrors: true,
  },
  eslint: {
    ignoreDuringBuilds: true,
  },
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'placehold.co',
        port: '',
        pathname: '/**',
      },
      {
        protocol: 'https',
        hostname: 'images.unsplash.com',
        port: '',
        pathname: '/**',
      },
      {
        protocol: 'https',
        hostname: 'picsum.photos',
        port: '',
        pathname: '/**',
      },
      {
        protocol: 'https',
        hostname: 'plus.unsplash.com',
        port: '',
        pathname: '/**',
      },
      {
        protocol: 'https',
        hostname: 'i.blogs.es',
        port: '',
        pathname: '/**',
      },
      {
        protocol: 'https',
        hostname: 'imagenes.pasteleriahijitos.cl',
        port: '',
        pathname: '/**',
      },
    ],
  },
  async redirects() {
    return [
      {
        source: '/',
        destination: '/sucursal',
        permanent: false,
      },
      {
        source: '/about',
        destination: '/sucursal',
        permanent: false,
      },
      {
        source: '/team',
        destination: '/sucursal',
        permanent: false,
      },
      {
        source: '/locations',
        destination: '/sucursal',
        permanent: false,
      },
      {
        source: '/contact',
        destination: '/sucursal',
        permanent: false,
      },
      {
        source: '/dulces',
        destination: '/sucursal',
        permanent: false,
      },
      {
        source: '/salados',
        destination: '/sucursal',
        permanent: false,
      },
      {
        source: '/tortas',
        destination: '/sucursal',
        permanent: false,
      },
      {
        source: '/order-online',
        destination: '/sucursal',
        permanent: false,
      },
    ];
  },
};

export default nextConfig;
