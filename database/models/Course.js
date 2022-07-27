module.exports = (sequeliz, Sequelize) => {
    let alias = "Course"
    let cols = {
      id: {
        type: Sequelize.BIGINT(11),
        primaryKey: true
      },
      name: {
        type: Sequelize.STRING
      },
      price: {
        type: Sequelize.BIGINT(11),
      },
      short_info: {
        type: Sequelize.STRING
      },
      long_info: {
        type: Sequelize.STRING
      },
      image_short: {
        type: Sequelize.STRING
      },
      image_long: {
        type: Sequelize.STRING
      }
    };
    let config = {
      tableName: 'courses',
      //Si el nombre de la tabla no coincide con el del modelo
      timestamps: false,
      //Si no tengo timestamps
    };
    const Course = sequeliz.define(alias, cols, config)
    Course.associate = function (models) {
      Course.hasMany(models.User, {
        as: 'course',
        foreignKey: 'course_id'
      })
    }
  
    return Course
  }