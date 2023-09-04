import React from 'react';
import { View, Text } from 'react-native';

export default function HomeView () {
    return (
        <View className="flex-1 items-center justify-center bg-white">
      <View className="bg-cyan-100 py-2 px-7 rounded-lg border border-cyan-300">
        <Text className="text-cyan-700 text-lg">
            I am a Tailwind Expo Go app!
        </Text>
      </View>
      <StatusBar style="auto" />
    </View>
    );
};