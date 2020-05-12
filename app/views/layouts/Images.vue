<template>
  <b-container>
    <b-row>
      <b-col>
        <div v-for="(item, i) in items" class="images" :key="i">
          <b-img thumbnail fluid :src="item.imageUrl"></b-img>
        </div>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
export default {
  data () {
    return {
      items: [
        { imageUrl: require('@/assets/images/1.png') },
        { imageUrl: require('@/assets/images/2.png') },
        { imageUrl: require('@/assets/images/3.png') },
        { imageUrl: require('@/assets/images/4.png') },
        { imageUrl: require('@/assets/images/5.png') },
        { imageUrl: require('@/assets/images/6.png') },
        { imageUrl: require('@/assets/images/7.png') },
        { imageUrl: require('@/assets/images/8.png') },
        { imageUrl: require('@/assets/images/9.png') },
        { imageUrl: require('@/assets/images/10.png') },
        { imageUrl: require('@/assets/images/11.png') },
        { imageUrl: require('@/assets/images/12.png') },
        { imageUrl: require('@/assets/images/13.png') },
        { imageUrl: require('@/assets/images/14.png') },
        { imageUrl: require('@/assets/images/15.png') },
        { imageUrl: require('@/assets/images/16.png') },
        { imageUrl: require('@/assets/images/17.png') },
        { imageUrl: require('@/assets/images/18.png') },
        { imageUrl: require('@/assets/images/19.png') },
        { imageUrl: require('@/assets/images/20.png') },
        { imageUrl: require('@/assets/images/21.png') },
        { imageUrl: require('@/assets/images/22.png') },
        { imageUrl: require('@/assets/images/23.png') },
        { imageUrl: require('@/assets/images/24.png') },
        { imageUrl: require('@/assets/images/25.png') },
        { imageUrl: require('@/assets/images/26.png') },
        { imageUrl: require('@/assets/images/27.png') },
        { imageUrl: require('@/assets/images/28.png') },
        { imageUrl: require('@/assets/images/29.png') },
        { imageUrl: require('@/assets/images/30.png') },
        { imageUrl: require('@/assets/images/31.png') },
        { imageUrl: require('@/assets/images/32.png') },
        { imageUrl: require('@/assets/images/33.png') },
        { imageUrl: require('@/assets/images/34.png') },
        { imageUrl: require('@/assets/images/35.png') },
        { imageUrl: require('@/assets/images/36.png') },
        { imageUrl: require('@/assets/images/37.png') },
        { imageUrl: require('@/assets/images/38.png') },
        { imageUrl: require('@/assets/images/39.png') },
        { imageUrl: require('@/assets/images/40.png') },
        { imageUrl: require('@/assets/images/41.png') },
        { imageUrl: require('@/assets/images/42.png') },
        { imageUrl: require('@/assets/images/43.png') },
        { imageUrl: require('@/assets/images/44.png') },
        { imageUrl: require('@/assets/images/45.png') },
        { imageUrl: require('@/assets/images/46.png') },
        { imageUrl: require('@/assets/images/47.png') },
        { imageUrl: require('@/assets/images/48.png') },
        { imageUrl: require('@/assets/images/49.png') },
        { imageUrl: require('@/assets/images/50.png') },
        { imageUrl: require('@/assets/images/51.png') },
        { imageUrl: require('@/assets/images/52.png') },
        { imageUrl: require('@/assets/images/53.png') },
        { imageUrl: require('@/assets/images/54.png') },
        { imageUrl: require('@/assets/images/55.png') },
        { imageUrl: require('@/assets/images/56.png') },
        { imageUrl: require('@/assets/images/57.png') },
        { imageUrl: require('@/assets/images/58.png') },
        { imageUrl: require('@/assets/images/59.png') },
        { imageUrl: require('@/assets/images/60.png') },
        { imageUrl: require('@/assets/images/61.png') },
        { imageUrl: require('@/assets/images/62.png') },
        { imageUrl: require('@/assets/images/63.png') },
        { imageUrl: require('@/assets/images/64.png') },
        { imageUrl: require('@/assets/images/65.png') },
        { imageUrl: require('@/assets/images/66.png') },
        { imageUrl: require('@/assets/images/67.png') },
        { imageUrl: require('@/assets/images/68.png') },
        { imageUrl: require('@/assets/images/69.png') },
        { imageUrl: require('@/assets/images/70.png') }
      ]
    }
  }
}
</script>

<style scoped>
.col {
  padding-left: 30px;
}

.images {
  margin: 0 auto;
  float: left;
  width: 350px;
  height: 400px;
  padding: 20px;
}

.col img {
  padding: 0;
}

.col img:hover {
  opacity: 0.8;
}
</style>
