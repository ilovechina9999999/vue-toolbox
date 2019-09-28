<template>
  <div class="q-pa-md">
    <div class="row q-col-gutter-lg" v-for="(groups, i) in colors" :key="i">
      <div class="card col-3" v-for="(color, j) in groups" :key="j">
        <div class="q-pa-xs" :style="`background: ${color.value}`">
          <div>{{ color.name }}</div>
          <div>{{ color.value }}</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import materialColor from 'src/assets/color.material.json'

export default {
  data () {
    return {
      colors: materialColor
    }
  }
}
</script>

<style lang="stylus" scoped>
  .card
    text-align center
</style>
