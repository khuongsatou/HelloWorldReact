import React, { useState } from 'react'
import {
  StyleSheet,
  Text,
  View,
  Button,
  TextInput,
  ScrollView
} from 'react-native';


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
      <ScrollView>
      {
        people.map((item) => {
          return (
            <View key={item.key}>
              <Text style={styles.items}>{item.name}</Text>
            </View>
          )
        })}
      </ScrollView>
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
    backgroundColor:'pink',
    fontSize:24
  }

});
