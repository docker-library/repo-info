## `neurodebian:focal`

```console
$ docker pull neurodebian@sha256:dab53b95677ccb8a31bc06d3335a396431cdfbec3cdffc3877e015046b2874e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `neurodebian:focal` - linux; amd64

```console
$ docker pull neurodebian@sha256:d3d3a46841d5247a03f3368db37ad21c84f9d6ba8d1cce2716559970aa3c1de3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34310473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9264e26b1de9f5a6739f9051fd96e808498d2ad606f0711e90d64874946fbc`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:18:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:18:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 09 Dec 2022 04:18:48 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian focal main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel focal main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 09 Dec 2022 04:18:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36294ed076237fe2949701f0d561854a434c0a1bbc060ff44dccf66bac6ae320`  
		Last Modified: Fri, 09 Dec 2022 04:20:30 GMT  
		Size: 5.5 MB (5492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874300d38a99835cbdd5b62b9b3575ef30b69f84b89bfb0b99133883db40dd1d`  
		Last Modified: Fri, 09 Dec 2022 04:20:29 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf5d1d93890be942dcfd63726aac7dcc6d78476abaaf54e65adc56067405500`  
		Last Modified: Fri, 09 Dec 2022 04:20:29 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfb1cd7c2eeccfca2e10ba3b158749dae318e3871063035203ad1114a0358b`  
		Last Modified: Fri, 09 Dec 2022 04:20:30 GMT  
		Size: 238.8 KB (238822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `neurodebian:focal` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f2e55ea02af00619f64903cea2237f9e6d58e3a490aa7b868c2ae8a6e9802780
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32907331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3462e381b2730a2f1141798d9de8bc0e60fef9b4bbcc92a2419952afe846bfc9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:12:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:13:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 09 Dec 2022 02:13:01 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian focal main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel focal main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 09 Dec 2022 02:13:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4666228e8d136e55e67c40fc0a1e1124088b19c582418d9b27fbea193976d338`  
		Last Modified: Fri, 09 Dec 2022 02:15:22 GMT  
		Size: 5.5 MB (5473147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b844e3098e3bc5eaa02a457b2238e4fdf16707c35936813a9158fa375030fc`  
		Last Modified: Fri, 09 Dec 2022 02:15:21 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196455a6ea85a6e00735d34db5d7d9e023bf78a3f0416bdd8831a743293e744`  
		Last Modified: Fri, 09 Dec 2022 02:15:21 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0daa88432e07c42249a709ae4a5d223c68fddc1d347ab3b658c0c16bb57d957`  
		Last Modified: Fri, 09 Dec 2022 02:15:21 GMT  
		Size: 239.0 KB (239007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
