<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-6 col-sm-offset-3">
        <div class="form-group">

            <h1>{{count}}</h1>
          <label for="title">Post Title</label>
          <input v-model="newPostTitle" id="title" type="text" class="form-control">
        </div>
        <div class="form-group">
          <label for="description">Post Description</label>
          <textarea v-model="newPostDesc" id="description" rows="8" class="form-control"></textarea>
        </div>
        <div class="form-group">
          <label for="Image">Image</label>
          <input v-model="image_url" id="image" type="text" class="form-control">
        </div>
        <button @click="addPost(newPostTitle, newPostDesc,image_url)"
          :class="{disabled: (!newPostTitle || !newPostDesc)}"
          class="btn btn-block btn-primary">Submit</button>
          <button class="btn btn-success" @click="Click()">Click</button>
        <button @click="ChangeName()" class="btn btn-dark">Change Name</button>
      </div>
      <div class="col-sm-6 com-sm-offset-3">
        <post v-bind:count="count" v-bind:post="posts"></post>
      </div>
    </div>
  </div>
</template>

<script>
    import Post from './posts.vue';
    const moment = require('moment');
    require('moment/locale/es');
  export default {
    data() {
      return {
        newPostTitle: "",
        newPostDesc: "",
          email:"",
          count:0,
          name:0,
          posts:[



          ],
          userName:"",

          image_url:""
      }
    },
      components:{
        post: Post

      },

      mounted(){

          this.GetPost();
          axios.get('/getcount').then(re=>{
              this.count=re.data;
              // console.log(re.data);


          });
          axios.get('/users').then(response=>{
              this.email=response.data.email;
              this.userName=response.data.name;
  console.log(this.userName);
          });
      },
    created() {
        this.GetPost();
      this.listenForChanges();
    },
    methods: {
        ChangeName(){

           // this.name+=1;
           // this.posts.push('im shashila');
            //this.GetPost();

        },
        GetPost(){
            axios.get('/allposts').then(res=>{
                if(res){

                    this.posts=[];
                }
                //console.log(res);

                for(var i=0;i<res.data.length;i++){

                    this.posts.push(res.data[i]);
                  //  this.image.push(res.data[i].image_url);
                }

            });

        },
      addPost(postName, postDesc,image) {
        // check if entries are not empty
        if(!postName || !postDesc)
          return;

        // make API to save post
        axios.post('/post', {
          title: postName, description: postDesc,image_url:image,added_by:this.userName
        }).then( response => {
          if(response.data) {
              console.log(response.data);
            this.newPostTitle = this.newPostDesc = "";
          }
        })
      },
      listenForChanges() {

             Echo.channel('test').listen('Added',post=>{
                             notif({
                               msg: "<b><img src='https://lh3.googleusercontent.com/-sCp6Dchvdk0/AAAAAAAAAAI/AAAAAAAAAAA/AGDgw-j9dlkjNsLDWKKuXmDoHum3ThOlJg/mo/photo.jpg?sz=50' /> User :"+post.name+"</b> Posted An update of ",
                               type: "success"
                           });
                 this.GetPost();
             });
              Echo.channel('posts')
                  .listen('PostPublished', post => {
                    //  console.log(post.title);
                     // console.log(post.name);

                       if(this.email==="shashila@gmail.com" || this.email==="diluka@gmail.com"||this.email==="ebayshashila@gmail.com"){
                           notif({
                               msg: "<b><img src='https://lh3.googleusercontent.com/-sCp6Dchvdk0/AAAAAAAAAAI/AAAAAAAAAAA/AGDgw-j9dlkjNsLDWKKuXmDoHum3ThOlJg/mo/photo.jpg?sz=50' /> User :"+post.name+"</b> Posted An update of "+post.title,
                               type: "success"
                           });

                           this.GetPost();
                       }else{

                           console.log('fuck');
                       }

                      axios.get('/getcount').then(re=>{
                       this.count=re.data;
                         // console.log(re.data);


                      });


                  });


        },
        Click(){

              // console.log(this.email);


           // console.log(this.$userId);
        }
      }
    }
</script>
