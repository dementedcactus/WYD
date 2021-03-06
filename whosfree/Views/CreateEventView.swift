//
//  CreateEventView.swift
//  whosfree
//
//  Created by Richard Crichlow on 3/16/18.
//  Copyright © 2018 Richard Crichlow. All rights reserved.
//
import UIKit

class CreateEventView: UIView {

    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.isScrollEnabled = true
        return scrollView
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var bannerPhotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "placeholder")
        return imageView
    }()
    
    lazy var eventTitleTextField: UITextField = {
        let textField = UITextField()
        Stylesheet.Objects.Textfields.EventTitle.style(textfield: textField)
        let font = UIFont(name: "Avenir-Heavy", size: 24)
        textField.font = font
        return textField
    }()
    
    lazy var eventTypeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Search For A Place", for: .normal)
        Stylesheet.Objects.Buttons.CreateButton.style(button: button)
        let font = UIFont(name: "Avenir-Medium", size: 18)
        button.titleLabel?.font = font
        return button
    }()
    
    lazy var datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.timeZone = NSTimeZone.local
        datePicker.backgroundColor = .white
        return datePicker
    }()
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search For Address"
        searchBar.barTintColor = UIColor.white
        return searchBar
    }()
    
    lazy var searchResultsTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SearchResultsCell")
        tableView.isHidden = true
        return tableView
    }()
    
    lazy var inviteFriendsButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("Invite Friends", for: .normal)
        button.backgroundColor = UIColor.blue
        Stylesheet.Objects.Buttons.CreateButton.style(button: button)
        let font = UIFont(name: "Avenir-Medium", size: 18)
        button.titleLabel?.font = font
        return button
    }()
    
    lazy var descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Enter event description..."
        Stylesheet.Objects.Textviews.Editable.style(textview: textView)
        let font = UIFont(name: "Avenir-Medium", size: 18)
        textView.font = font
        return textView
    }()
    
    lazy var friendsGoingCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cellSpacing: CGFloat = 5.0
        let numCells: CGFloat = 3
        let numSpaces: CGFloat = numCells + 1
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let width = (screenWidth - (cellSpacing * numSpaces)) / numCells
        let height = width
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = cellSpacing * 2
        layout.minimumInteritemSpacing = cellSpacing
        layout.itemSize = CGSize(width: width, height: height)
        layout.sectionInset = UIEdgeInsetsMake(cellSpacing, cellSpacing, cellSpacing, cellSpacing)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.register(FriendsCollectionViewCell.self, forCellWithReuseIdentifier: "user going cell")
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    lazy var deleteButton: UIButton = {
        let button = UIButton()
        Stylesheet.Objects.Buttons.CreateButton.style(button: button)
        button.backgroundColor = .red
        button.setTitle("Delete Event", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        setupScrollView()
        setupContentView()
        setupBannerPhoto()
        setupEventTitle()
        setupDescriptionTextView()
        setupEventTypeButton()
        setupDatePicker()
        setupSearchBar()
        setupInviteButton()
        setupSearchResultsTableView()
        setupFriendsGoingCollectionView()
        setupDeleteButton()
    }
    
    
    
    private func setupScrollView() {
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    private func setupContentView() {
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    private func setupBannerPhoto() {
        contentView.addSubview(bannerPhotoImageView)
        bannerPhotoImageView.translatesAutoresizingMaskIntoConstraints = false
        bannerPhotoImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bannerPhotoImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bannerPhotoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        bannerPhotoImageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        bannerPhotoImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
    }
    
    private func setupEventTitle() {
        contentView.addSubview(eventTitleTextField)
        eventTitleTextField.translatesAutoresizingMaskIntoConstraints = false
        eventTitleTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        eventTitleTextField.topAnchor.constraint(equalTo: bannerPhotoImageView.bottomAnchor, constant: 5).isActive = true
        eventTitleTextField.heightAnchor.constraint(equalTo: bannerPhotoImageView.heightAnchor, multiplier: 0.3).isActive = true
        eventTitleTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        eventTitleTextField.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
    }
    
    private func setupDescriptionTextView() {
        contentView.addSubview(descriptionTextView)
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        descriptionTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        descriptionTextView.topAnchor.constraint(equalTo: eventTitleTextField.bottomAnchor, constant: 5).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        descriptionTextView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25).isActive = true
    }
    
    private func setupEventTypeButton() {
        contentView.addSubview(eventTypeButton)
        eventTypeButton.translatesAutoresizingMaskIntoConstraints = false
        eventTypeButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        eventTypeButton.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant: 5).isActive = true
        eventTypeButton.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
        eventTypeButton.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.05).isActive = true
    }
    
    private func setupDatePicker() {
        contentView.addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        datePicker.topAnchor.constraint(equalTo: eventTypeButton.bottomAnchor, constant: 5).isActive = true
        datePicker.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        datePicker.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.15).isActive = true
        datePicker.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
    }
    
    private func setupSearchBar() {
        contentView.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        searchBar.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 5).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        searchBar.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
    }
    
    private func setupSearchResultsTableView() {
        contentView.addSubview(searchResultsTableView)
        searchResultsTableView.translatesAutoresizingMaskIntoConstraints = false
        searchResultsTableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        searchResultsTableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor).isActive = true
        searchResultsTableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        searchResultsTableView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.3).isActive = true
        searchResultsTableView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
    }
    
    private func setupInviteButton() {
        contentView.addSubview(inviteFriendsButton)
        inviteFriendsButton.translatesAutoresizingMaskIntoConstraints = false
        inviteFriendsButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        inviteFriendsButton.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 5).isActive = true
        inviteFriendsButton.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
        inviteFriendsButton.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.05).isActive = true
    }
    
    private func setupFriendsGoingCollectionView() {
        contentView.addSubview(friendsGoingCollectionView)
        friendsGoingCollectionView.translatesAutoresizingMaskIntoConstraints = false
        friendsGoingCollectionView.topAnchor.constraint(equalTo: inviteFriendsButton.bottomAnchor, constant: 5).isActive = true
        friendsGoingCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        friendsGoingCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        //friendsGoingCollectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        friendsGoingCollectionView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25).isActive = true
    }
    
    private func setupDeleteButton() {
        contentView.addSubview(deleteButton)
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        deleteButton.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        deleteButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        deleteButton.heightAnchor.constraint(equalTo: inviteFriendsButton.heightAnchor, multiplier: 0.0).isActive = true
        deleteButton.topAnchor.constraint(equalTo: friendsGoingCollectionView.bottomAnchor, constant: 5).isActive = true
        deleteButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
}
