import React, { useState } from 'react'
import {
  StyleSheet,
  Text,
  View,
  Button,
  TextInput,
  ScrollView,
  Touchable
} from 'react-native';
import { FlatList, TouchableOpacity } from 'react-native-gesture-handler';


export default function App() {
  const [people, setPeople] = useState([
    { name: 'shaun', key: 1 },
    { name: 'yoshi', key: 2 },
    { name: 'luigi', key: 3 },
    { name: 'peach', key: 4 },
    { name: 'toad', key: 5 },
    { name: 'bowser', key: 6 },
  ]);
  const pressHandler =(key)=>{
    console.log(key);
    //Đầu vào là 1 mảng
    setPeople((prevPeople)=>{
      //Lọc qua từng item
      //false là xóa nó
      //true là giữ lại
      // nếu nó là item của mình nhấn vào thì trả về false và xóa nó
      return prevPeople.filter(person =>person.key != key);
    });
  }
  return (
    <View style={styles.container}>
      <FlatList
        numColumns={2}
        keyExtractor={(item) => item.key}
        data={people}
        renderItem={({ item }) => (
          <TouchableOpacity onPress={()=>pressHandler(item.key)}>
              <Text style={styles.items}>{item.name}</Text>
          </TouchableOpacity>
        )}
      />
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
