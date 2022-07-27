module.exports = (sequeliz, Sequelize) => {
    let alias = "User"
    let cols = {
      id: {
        type: Sequelize.BIGINT(11),
        primaryKey: true
      },
      courses_id: {
        type: Sequelize.BIGINT(11)
      },
      name: {
        type: Sequelize.STRING
      },
      email: {
        type: Sequelize.STRING
      },
      password: {
        type: Sequelize.STRING
      }
    };
    let config = {
      tableName: 'users',
      //Si el nombre de la tabla no coincide con el del modelo
      timestamps: false,
      //Si no tengo timestamps
    };
    const User = sequeliz.define(alias, cols, config)
  
    User.associate = function (models) {
      User.belongsTo(models.Course, {
        as: 'course',
        foreignKey: 'course_id'
      })
    }
    return User
  }