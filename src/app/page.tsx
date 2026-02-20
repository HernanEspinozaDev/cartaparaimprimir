import Link from 'next/link';
import Image from 'next/image';

export default function Home() {
  return (
    <div className="min-h-screen bg-[#1c1c1c] text-white flex flex-col items-center justify-center p-4">
      <div className="text-center space-y-8">
        <div className="relative w-48 h-32 mx-auto">
          <Image
            src="/logo.webp"
            alt="Logo Pastelería Hijitos"
            fill
            className="object-contain"
            priority
          />
        </div>
        <h1 className="text-5xl font-bold text-amber-500 font-dancing">
          Pastelería Hijitos
        </h1>
        <p className="text-gray-400 text-xl font-light">
          Menú para Impresión
        </p>
        
        <div className="pt-8">
          <Link 
            href="/sucursal/cartaclasica"
            className="inline-block bg-amber-500 text-black px-8 py-4 rounded-full font-semibold text-lg hover:bg-amber-400 transition-colors"
          >
            Ver Carta Clásica
          </Link>
        </div>
      </div>
    </div>
  );
}
