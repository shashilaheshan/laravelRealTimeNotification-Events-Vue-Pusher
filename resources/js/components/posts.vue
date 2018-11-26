<template>
    <div class="panel panel-default">
        <h2>All Posts {{count}}</h2>
        <div class="well">

            <div v-for="pt in post">
                <h3 class="text-center">{{pt.title}} </h3>
                     <div class="text-center">
                         <img  :src="pt.image_url" width="100px" />
                     </div>
                     <div class="float-right">
                         <h5>{{pt.added_by}} </h5>

                     </div>
                <hr style="background-color: #1b1e21">
              <!--//  <img src="{{pt.image_url}}" />-->
            </div>

        </div>


    </div>


</template>

<script>
    export default {

        props: ['count','post'],

    }
</script>

<style scoped>

</style>