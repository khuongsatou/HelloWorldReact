import React, { useState } from 'react'
import {
  StyleSheet,
  Text,
  View,
  Button,
  TextInput,
  ScrollView
} from 'react-native';
import { FlatList } from 'react-native-gesture-handler';


export default function App() {
  const [people, setPeople] = useState([
    { name: 'shaun', key: 1 },
    { name: 'yoshi', key: 2 },
    { name: 'luigi', key: 3 },
    { name: 'peach', key: 4 },
    { name: 'toad', key: 5 },
    { name: 'bowser', key: 6 },
  ]);

  return (
    <View style={styles.container}>
      <FlatList
        numColumns={2}
        keyExtractor={(item) => item.key}
        data={people}
        renderItem={({ item }) => (
          <Text style={styles.items}>{item.name}</Text>
        )}
      />



      {/* <ScrollView>
      {
        people.map(item => (
            <View key={item.key}>
              <Text style={styles.items}>{item.name}</Text>
            </View>
        ))
      }
      </ScrollView> */}
    </View>
  )
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'stretch',
    justifyContent: 'center',
  },

  items: {
    marginTop: 24,
    padding: 30,
    backgroundColor: 'pink',
    fontSize: 24,
    marginHorizontal:10
  }

});
