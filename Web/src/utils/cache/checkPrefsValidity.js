import cachePrefs from '@/run_config/cachePrefs'

// Check if component type preferences are defined properly in run_config/cachePrefs.js
export function isPrefValid (componentType) {
  const componentPrefs = cachePrefs[componentType]
  const isAgeInvalid = !componentPrefs ||
                       (isNaN(componentPrefs) &&
                        isNaN(componentPrefs.age))

  if (isAgeInvalid) {
    throw new Error(
      'Component cache or age preferences missing/invalid for type: \'' +
      componentType +
      '\'. Please specify them in run_config/cachePrefs.js'
    )
  }
}
