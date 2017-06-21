import React, { Component } from 'react'

class SiteMenu extends Component {
  render() {
    return (
      <ul className="menu">
        <li className="menu-item">
          <a href="#" className="active">
            <i className="icon icon-apps" /> 首页
          </a>
        </li>

        <li className="divider" />
        <li className="menu-item">
          <a href="#">
            <i className="icon icon-link" /> 归档
          </a>
        </li>

        <li className="divider" />
        <li className="menu-item">
          <a href="#">
            <i className="icon icon-bookmark" /> 标签
          </a>
        </li>

        <li className="divider" />
        <li className="menu-item">
          <a href="#">
            <i className="icon icon-search" /> 搜索
          </a>
        </li>
      </ul>
    )
  }
}

export default SiteMenu
