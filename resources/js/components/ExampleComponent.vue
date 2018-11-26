<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-default">
                    <div class="card-header">Example Component</div>

                    <div class="card-body">
                        I'm an example component.
                         <button class="btn btn-success" id="btn" @click="alerts()">Click
                             Me
                         </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        },
        methods:{

             alerts(){
                 axios.post('/api/post',{
                     title:'vue.js',
                     description:'wesome Frameworka'


                 }).then(response=>{
                       console.log(response.data);

                 });
                 $('#btn').html('Changed');
                //alert('clicke Me');

             }
        },

    }
</script>
