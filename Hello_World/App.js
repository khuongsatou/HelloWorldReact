import React, { useState } from 'react'
import {
  StyleSheet,
  Text,
  View,
  Button,
  TextInput
} from 'react-native';


export default function App(){
  const [name,setName] = useState('Khuong');
  const [person,setPerson] = useState({
    name:'mario',
    age:40
  });
  const clickHandler = () =>{
    setName('Thang Khac');
    setPerson({name:'Mario 2' ,age:45});
  }
  return (
    <View style={styles.container}>
      <Text>Enter name:</Text>
      <TextInput style={styles.input}
      placeholder='e.g. Khuong'
      onChangeText={(val)=>setName(val)}
      
      />
      <Text>name:{name},age:{person.age}</Text>
    </View>
  )
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor:'#fff',
    alignItems:'center',
    justifyContent:'center',
  },
  buttonContainer:{
    margin:20
  },
  input:{
    borderWidth:1,
    borderColor:'#777',
    padding:8,
    margin:10,
  }
 
});
