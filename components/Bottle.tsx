"use client";
import { useState } from 'react';

export default function Bottle() {
  const [isFull, setIsFull] = useState(true);

  const handleDrink = () => {
    setIsFull(false);
  };

  return (
    <div className="flex flex-col items-center">
      <div className={`h-48 w-12 bg-${isFull ? 'blue' : 'gray'}-500 rounded`}></div>
      <button onClick={handleDrink} className="mt-4 bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Drink</button>
    </div>
  );
}