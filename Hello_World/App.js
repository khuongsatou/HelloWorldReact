import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { Avatar } from "./src/Components";
export default function App() {
  return (
    <View>
      <Avatar
        width={50}
        height={50}
        borderRadius={50 / 2}
        backgroundColor={"red"}
      />
      <Avatar
        width={50}
        height={50}
        borderRadius={50 / 2}
        backgroundColor={"blue"}
      />

    </View>

  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
