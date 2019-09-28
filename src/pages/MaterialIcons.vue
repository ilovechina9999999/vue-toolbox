<template>
  <div class="q-pa-md">
    <div class="row q-col-gutter-lg">
      <div class="card col-3" v-for="(icon, idx) in icons" :key="idx">
        <q-icon :name="icon.name" size="md" class="q-my-md" />
        <div>{{ icon.name }}</div>
      </div>
    </div>
  </div>
</template>

<script>
import materialIcons from 'src/assets/icon.material.json'

export default {
  data () {
    return {
      icons: materialIcons
    }
  }
}
</script>

<style lang="stylus" scoped>
  .card
    text-align center
</style>
