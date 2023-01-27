<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:2021.1`](#bonita20211)
-	[`bonita:2021.2`](#bonita20212)
-	[`bonita:2021.2-u0`](#bonita20212-u0)
-	[`bonita:2022.1`](#bonita20221)
-	[`bonita:2022.1-u0`](#bonita20221-u0)
-	[`bonita:2022.2`](#bonita20222)
-	[`bonita:2022.2-u0`](#bonita20222-u0)
-	[`bonita:7.12`](#bonita712)
-	[`bonita:7.12.1`](#bonita7121)
-	[`bonita:7.13`](#bonita713)
-	[`bonita:7.13.0`](#bonita7130)
-	[`bonita:7.14`](#bonita714)
-	[`bonita:7.14.0`](#bonita7140)
-	[`bonita:7.15`](#bonita715)
-	[`bonita:7.15.0`](#bonita7150)
-	[`bonita:latest`](#bonitalatest)

## `bonita:2021.1`

```console
$ docker pull bonita@sha256:f1247b05a5ebff45eac4f65edd326371c26bc89890487501c40b94cbbd9c9bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:2021.1` - linux; amd64

```console
$ docker pull bonita@sha256:ca178d8d370522e43f6bef14711714b06e1b83189f9587cac0c0171bdb153ff6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235201515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9514768a183879e184ccbd009e9832942567680c52e4572542dbc4dbaf24dd4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:05:25 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:06:35 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:06:36 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:06:38 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:06:39 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:06:39 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 19:06:39 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:06:40 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 19:06:40 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:06:41 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 19:06:50 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 19:06:52 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 19:06:53 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 19:06:53 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:06:53 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:06:53 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:06:53 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9773e32438a2b3a0096989143a42027e4563689429197843e376b3650d9b050e`  
		Last Modified: Mon, 02 Jan 2023 19:08:17 GMT  
		Size: 91.6 MB (91557485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558fa62f83ba0c0660da8e40177bcc828b9aa13bcefb581738f197994df6a640`  
		Last Modified: Mon, 02 Jan 2023 19:08:06 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1a64d961b244c5bfdfaba569454c83d6f95d8f589c32afbb2e27eb3075b43d`  
		Last Modified: Mon, 02 Jan 2023 19:08:06 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3795b27a8dcbfba90b0d61033398c5fe85c15a992d5876706d1e308788d14f9`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 506.3 KB (506347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffd6d2ad9883b4bdcefe36879a9237a6e25fbf5513cbc05e7f035b174d09ef5`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bab7623ff2b67274fd60958fd12bc968a1d8da7778980998bb5de1462e2279f`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 6.9 KB (6944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde99923d28faffae608b1824473f4197c988a4a679f070b1d872976120dbfeb`  
		Last Modified: Mon, 02 Jan 2023 19:08:09 GMT  
		Size: 116.4 MB (116415405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6a4ef1f567ec250fa7a6364c79a71f10c831f6696c651abeab28db92dee55`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2021.1` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:42474f525b202f8b5d2590389e855f901b63c3f6eea8312f74200342cff2f193
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226682960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a38bae78b52e90d82794bb8aab6df931b68be26d855e20dea89a300f2e104b6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:42:44 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 18:44:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:44:12 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 18:44:13 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 18:44:16 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 18:44:17 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 18:44:17 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 18:44:18 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 18:44:18 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 18:44:24 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 18:44:25 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 18:44:26 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 18:44:26 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 18:44:26 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 18:44:26 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 18:44:26 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e354ecc565fc3de85c594042291dc1c5de70a5d1521171d3a3155e73921ed63`  
		Last Modified: Mon, 02 Jan 2023 18:45:48 GMT  
		Size: 86.0 MB (86045685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a886800f0fb6cc0a8c9878f1630c7ad3ea5cc622eb7601343c8e8713dfef1d5`  
		Last Modified: Mon, 02 Jan 2023 18:45:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad010153362dfca28248b1f6fa4d5aeaa1850fb8ab14399e17b06f8c8f4b655`  
		Last Modified: Mon, 02 Jan 2023 18:45:39 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a7013f18a605bb1907153acd009d7b83aaa4cc3fd62d351ae8dd6862ea5ea`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 475.8 KB (475808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e415c26483eb06ed564d4c70e641e5863e71904b8f2bea726ae3c52a3fd4b`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02506338c174b1b9980625c978d87043dc66167fc23a3446943a7d5365ed512`  
		Last Modified: Mon, 02 Jan 2023 18:45:37 GMT  
		Size: 6.9 KB (6946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6143fece73fea2145dcfd69c29549612fda7df68d55715178b89c7d9b55943`  
		Last Modified: Mon, 02 Jan 2023 18:45:42 GMT  
		Size: 116.4 MB (116415406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304dbddeb9bbcdf0d1cdbfee97767db38c21d7ad2120aaf54679749355f90442`  
		Last Modified: Mon, 02 Jan 2023 18:45:37 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2021.1` - linux; ppc64le

```console
$ docker pull bonita@sha256:778bd6c622b603d95d2ded9c68826de7b76333783a328118a0da07f737f8cad8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234183004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8330af9c755a662daf47a4035649d3f74b559e43088624be92e4e39ba2735bd9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:19:02 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:20:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:20:46 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:20:48 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:20:52 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:20:52 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:20:53 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:20:53 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:20:54 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:20:54 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:20:54 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 19:20:55 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 19:20:55 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 19:20:55 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:20:56 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:20:56 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:20:57 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 19:20:58 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:20:59 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 19:21:06 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 19:21:09 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 19:21:11 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 19:21:11 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:21:12 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:21:12 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:21:13 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5921307a308498a8a853a7c2f5f04660313efdaccfb7ca0349f4ec0e6308cfc`  
		Last Modified: Mon, 02 Jan 2023 19:23:57 GMT  
		Size: 86.8 MB (86838913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195ef5a230ffa21f61a83d4ebd0265f8f2dbf1b89f7c8f4e786b3414d7fffbc5`  
		Last Modified: Mon, 02 Jan 2023 19:23:37 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0108e6e920a458efb7a5038aa6831cdfb3ef513845153e699083b86483cc1ee`  
		Last Modified: Mon, 02 Jan 2023 19:23:37 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358b45853f6dab00820d28109b72fb4a02394e2e92d1a90aaa239d7215e1e8a`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 475.3 KB (475349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6d5e0d9b051a3ee6ade45e2432fb64f2f7afbe8bb14c83da758c047f24e47`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc14e48b10cd374d4869c0fe7e8cc875ecb8239d613d3dce9abb484af416d22`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf5cfa50e953b190e117aacaddc51ee21598734b165243dae8a8d2c282735a`  
		Last Modified: Mon, 02 Jan 2023 19:23:44 GMT  
		Size: 116.4 MB (116415405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855855566d206f73e1cf9725cd37214634ac32c000398a7947e62aa47f0a0fb0`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:2021.2`

```console
$ docker pull bonita@sha256:afa385216ea5ee294df26ca400d0a3c5ae8dbdeae9963416fba6127e492ae31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:2021.2` - linux; amd64

```console
$ docker pull bonita@sha256:920b78354fc4bee190a5ce415e6096f44cc9d83977945081b54f126a89586c0e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232934453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9d23612834b5490b94cd75fa26d93f23a07c72475a105aa5583f2c3fc9b029`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:05:25 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:07:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:07:25 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:07:25 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:07:28 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:07:29 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:07:29 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 19:07:29 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:07:30 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:07:30 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 19:07:39 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 19:07:40 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 19:07:40 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:07:40 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:07:41 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:07:41 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bfcd0240d95d420d30c58f6b9019529ac7036720699f2d5b68081a9df9a04b`  
		Last Modified: Mon, 02 Jan 2023 19:08:42 GMT  
		Size: 91.6 MB (91557405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54b8fc0b9621150d563dd6cf9d717e8236cdc46c7c8d4db5f04bfa0a8619c73`  
		Last Modified: Mon, 02 Jan 2023 19:08:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86f09f0ddc1ebe57f387df1c1fde4b38940ea27861343113c13416f64c94811`  
		Last Modified: Mon, 02 Jan 2023 19:08:30 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3733e835f8a91707ce94fb1d8c38225b10365e098d28d927f7ee7a07c7ea6b`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 930.5 KB (930478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f27eb22287e877cb2824a6d40fa59e3f0fc61254e02f3be79d1e065d1d1c7`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e791908b3c80fde08666488ea98a4ebcef52de72719a19085ce19c145747fe31`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdbc40bce144581d43c72ba4209cf2ed6378d2aefca4911bfd630a1f1f8b904`  
		Last Modified: Mon, 02 Jan 2023 19:08:34 GMT  
		Size: 113.7 MB (113727935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8563834929b2ac16d39e7b27d572b84fb9faaa7638fc109befb17cea8d05f2cc`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2021.2` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1b93a4c46540385205eae0e3a60ae86409894fddd203ff94acad00c61935f14b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224375622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1bf5171820c29ad84ee87ce862fa54ce0feb44c872b045ff7dff574e3e4935`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:42:44 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 18:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:44:53 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 18:44:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 18:44:57 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 18:44:57 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 18:44:58 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 18:44:58 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 18:45:06 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 18:45:06 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 18:45:07 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 18:45:07 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 18:45:08 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 18:45:09 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4231fbbb4a703e890c2d6e1eff629dedebd8fb76eac5c1f1f089bcfe1aff016`  
		Last Modified: Mon, 02 Jan 2023 18:46:09 GMT  
		Size: 86.0 MB (86045695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c8021bf85540e48c8f91952cf5abe4d7c1891fc22f98929f81c9fec8726b7e`  
		Last Modified: Mon, 02 Jan 2023 18:46:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b24ca02958edf75b3c547a94b29c90e37477c96f445731d1e95ebb26465dd2`  
		Last Modified: Mon, 02 Jan 2023 18:46:00 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e387cbb50ab95490a87e0bab79f403ab56434ea471c4c5513746a02de8e18581`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 859.6 KB (859580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a98b39d0bdeaabd0529b14ea00be38bc7bbbc779461972c3882a68a2aa46da`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb14f04e5e99a8cb55903d0da4baa337526499368fd4e2aa6b748798d4472fe`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2957f337533cddb4c1873cf4b3900e1e6186d243600db2f394e185efa7e282`  
		Last Modified: Mon, 02 Jan 2023 18:46:04 GMT  
		Size: 113.7 MB (113727934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54006f9aa17b40a5097a97075fcfd63d24fd8e1ece2342586c660b5ad759049c`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2021.2` - linux; ppc64le

```console
$ docker pull bonita@sha256:9de7769f34a2643eea2c81fa35a3a235f7eb004b6c15929e3fbb899b8e12df3e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231847028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc0df2b93c19fd171a31e858df9cacf7cba1b021c9f0a9ce880a29a114471f3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:19:02 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:22:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:22:13 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:22:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:22:18 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:22:18 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:22:18 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:22:19 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:22:19 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:22:20 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:22:20 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 19:22:20 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 19:22:21 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 19:22:21 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:22:21 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:22:22 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:22:23 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:22:23 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 19:22:37 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 19:22:38 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 19:22:41 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:22:42 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:22:44 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:22:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a066585437caa02e061b93d173570b76c41646720750ffb9ff6fa888462186`  
		Last Modified: Mon, 02 Jan 2023 19:24:32 GMT  
		Size: 86.8 MB (86837826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848367c572cf12cae55844aa4215d917ca1db306d7fb02958d2166e842e1bbf`  
		Last Modified: Mon, 02 Jan 2023 19:24:13 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8502c10d0f24df65a786d610583484cd60a7253a909bb4e0f5462b8e11d4ccc7`  
		Last Modified: Mon, 02 Jan 2023 19:24:13 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7e2eacd9a7d06a9ba724e1c64ca2792b483d0ab277920f45c927160536d06f`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 831.6 KB (831591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df00de9b2a2b5a6eef1bbb347dc5330fc476f401e04f73a2443d6011e9a3be97`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e0b0079700b15885f19b7577d97c7cba3d766500e6cd2d0e58110e91914b4d`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79b7b5bf71b3530953cf2a6184346b31530ea1d2d80c4b662d9ba7c9915a936`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 113.7 MB (113727924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd563718e21db3320e9458d69b7c301ee4ca7d2ea81f00d545ace289a3a8c9ab`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:2021.2-u0`

```console
$ docker pull bonita@sha256:afa385216ea5ee294df26ca400d0a3c5ae8dbdeae9963416fba6127e492ae31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:2021.2-u0` - linux; amd64

```console
$ docker pull bonita@sha256:920b78354fc4bee190a5ce415e6096f44cc9d83977945081b54f126a89586c0e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232934453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9d23612834b5490b94cd75fa26d93f23a07c72475a105aa5583f2c3fc9b029`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:05:25 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:07:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:07:25 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:07:25 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:07:28 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:07:29 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:07:29 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 19:07:29 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:07:30 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:07:30 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 19:07:39 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 19:07:40 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 19:07:40 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:07:40 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:07:41 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:07:41 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bfcd0240d95d420d30c58f6b9019529ac7036720699f2d5b68081a9df9a04b`  
		Last Modified: Mon, 02 Jan 2023 19:08:42 GMT  
		Size: 91.6 MB (91557405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54b8fc0b9621150d563dd6cf9d717e8236cdc46c7c8d4db5f04bfa0a8619c73`  
		Last Modified: Mon, 02 Jan 2023 19:08:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86f09f0ddc1ebe57f387df1c1fde4b38940ea27861343113c13416f64c94811`  
		Last Modified: Mon, 02 Jan 2023 19:08:30 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3733e835f8a91707ce94fb1d8c38225b10365e098d28d927f7ee7a07c7ea6b`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 930.5 KB (930478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f27eb22287e877cb2824a6d40fa59e3f0fc61254e02f3be79d1e065d1d1c7`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e791908b3c80fde08666488ea98a4ebcef52de72719a19085ce19c145747fe31`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdbc40bce144581d43c72ba4209cf2ed6378d2aefca4911bfd630a1f1f8b904`  
		Last Modified: Mon, 02 Jan 2023 19:08:34 GMT  
		Size: 113.7 MB (113727935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8563834929b2ac16d39e7b27d572b84fb9faaa7638fc109befb17cea8d05f2cc`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2021.2-u0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1b93a4c46540385205eae0e3a60ae86409894fddd203ff94acad00c61935f14b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224375622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1bf5171820c29ad84ee87ce862fa54ce0feb44c872b045ff7dff574e3e4935`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:42:44 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 18:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:44:53 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 18:44:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 18:44:57 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 18:44:57 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 18:44:58 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 18:44:58 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 18:45:06 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 18:45:06 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 18:45:07 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 18:45:07 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 18:45:08 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 18:45:09 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4231fbbb4a703e890c2d6e1eff629dedebd8fb76eac5c1f1f089bcfe1aff016`  
		Last Modified: Mon, 02 Jan 2023 18:46:09 GMT  
		Size: 86.0 MB (86045695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c8021bf85540e48c8f91952cf5abe4d7c1891fc22f98929f81c9fec8726b7e`  
		Last Modified: Mon, 02 Jan 2023 18:46:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b24ca02958edf75b3c547a94b29c90e37477c96f445731d1e95ebb26465dd2`  
		Last Modified: Mon, 02 Jan 2023 18:46:00 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e387cbb50ab95490a87e0bab79f403ab56434ea471c4c5513746a02de8e18581`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 859.6 KB (859580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a98b39d0bdeaabd0529b14ea00be38bc7bbbc779461972c3882a68a2aa46da`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb14f04e5e99a8cb55903d0da4baa337526499368fd4e2aa6b748798d4472fe`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2957f337533cddb4c1873cf4b3900e1e6186d243600db2f394e185efa7e282`  
		Last Modified: Mon, 02 Jan 2023 18:46:04 GMT  
		Size: 113.7 MB (113727934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54006f9aa17b40a5097a97075fcfd63d24fd8e1ece2342586c660b5ad759049c`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2021.2-u0` - linux; ppc64le

```console
$ docker pull bonita@sha256:9de7769f34a2643eea2c81fa35a3a235f7eb004b6c15929e3fbb899b8e12df3e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231847028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc0df2b93c19fd171a31e858df9cacf7cba1b021c9f0a9ce880a29a114471f3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:19:02 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:22:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:22:13 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:22:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:22:18 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:22:18 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:22:18 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:22:19 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:22:19 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:22:20 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:22:20 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 19:22:20 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 19:22:21 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 19:22:21 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:22:21 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:22:22 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:22:23 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:22:23 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 19:22:37 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 19:22:38 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 19:22:41 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:22:42 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:22:44 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:22:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a066585437caa02e061b93d173570b76c41646720750ffb9ff6fa888462186`  
		Last Modified: Mon, 02 Jan 2023 19:24:32 GMT  
		Size: 86.8 MB (86837826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848367c572cf12cae55844aa4215d917ca1db306d7fb02958d2166e842e1bbf`  
		Last Modified: Mon, 02 Jan 2023 19:24:13 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8502c10d0f24df65a786d610583484cd60a7253a909bb4e0f5462b8e11d4ccc7`  
		Last Modified: Mon, 02 Jan 2023 19:24:13 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7e2eacd9a7d06a9ba724e1c64ca2792b483d0ab277920f45c927160536d06f`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 831.6 KB (831591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df00de9b2a2b5a6eef1bbb347dc5330fc476f401e04f73a2443d6011e9a3be97`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e0b0079700b15885f19b7577d97c7cba3d766500e6cd2d0e58110e91914b4d`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79b7b5bf71b3530953cf2a6184346b31530ea1d2d80c4b662d9ba7c9915a936`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 113.7 MB (113727924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd563718e21db3320e9458d69b7c301ee4ca7d2ea81f00d545ace289a3a8c9ab`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:2022.1`

```console
$ docker pull bonita@sha256:0f038ccdde32fa4b90a855ec5bb41db8434cfbe432cecbcde8abd01c88b0ad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:2022.1` - linux; amd64

```console
$ docker pull bonita@sha256:862fefb5c63bd62f0d955db355c2f3f4f22e193522753d8eedc527cd683c6d9e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180333199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bff25d56fe4420a99127f674a2df8588fc8fdf9319915429e3416e6f76dc008`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:14:09 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 06 Oct 2022 20:14:13 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 06 Oct 2022 20:14:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 06 Oct 2022 20:14:14 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 06 Oct 2022 20:14:14 GMT
ARG BONITA_VERSION
# Thu, 06 Oct 2022 20:14:14 GMT
ARG BRANDING_VERSION
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BONITA_SHA256
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BASE_URL
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BONITA_URL
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 06 Oct 2022 20:14:15 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 20:14:16 GMT
RUN mkdir /opt/files
# Thu, 06 Oct 2022 20:14:16 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 06 Oct 2022 20:14:30 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API_PASSWORD=
# Thu, 06 Oct 2022 20:14:31 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 06 Oct 2022 20:14:31 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 06 Oct 2022 20:14:31 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 06 Oct 2022 20:14:32 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 06 Oct 2022 20:14:32 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 06 Oct 2022 20:14:32 GMT
EXPOSE 8080 9000
# Thu, 06 Oct 2022 20:14:32 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 06 Oct 2022 20:14:32 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede2860654ad6d68046410f9ebec3dd9b9dca61c6fd599f0045a6f5741bf9d6`  
		Last Modified: Thu, 06 Oct 2022 20:15:08 GMT  
		Size: 60.8 MB (60808866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce69fcdc27b67a89739ff4629aa93b1c46f792c65d81f096c0f8a7d81a47728`  
		Last Modified: Thu, 06 Oct 2022 20:15:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af59dcbbf223b0ac4dc3fd0d01996906c078459ddaae9684440c4cea484b89c`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2805f0e33650a409f35745444bc7f23d5e82f697438025abb67df81ec03caf4`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173969905ee8acb031228953620f4d6f959d48886d22214974e9764c2d27e28a`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 3.0 KB (3031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce6ae14f1b5883093c182f12ce1d593988cae499bb4372256b0301c1b00e9e`  
		Last Modified: Thu, 06 Oct 2022 20:15:05 GMT  
		Size: 116.7 MB (116690804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98acc053b219affe2080f6ddfad206474004eda9666c5b092bf9fc90aa31659`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2022.1` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:92b3b92dc468cfc22704a83368c85d4758c878808548637ad8401f6ba78e5282
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a01742b56399308f70d74c2477c82b5f0562160950db295a6adb0b48e8dadf`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:31:09 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 10 Nov 2022 21:31:12 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 10 Nov 2022 21:31:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 10 Nov 2022 21:31:14 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BONITA_VERSION
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BRANDING_VERSION
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BONITA_SHA256
# Thu, 10 Nov 2022 21:31:15 GMT
ARG BASE_URL
# Thu, 10 Nov 2022 21:31:15 GMT
ARG BONITA_URL
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 10 Nov 2022 21:31:15 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 10 Nov 2022 21:31:16 GMT
RUN mkdir /opt/files
# Thu, 10 Nov 2022 21:31:16 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 10 Nov 2022 21:31:24 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API_PASSWORD=
# Thu, 10 Nov 2022 21:31:25 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 10 Nov 2022 21:31:25 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 10 Nov 2022 21:31:25 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 10 Nov 2022 21:31:26 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 10 Nov 2022 21:31:26 GMT
EXPOSE 8080 9000
# Thu, 10 Nov 2022 21:31:26 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 10 Nov 2022 21:31:26 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a3ecf9c0764240ea4a002e97a93756470158670ab2d476271c5dff63411aba`  
		Last Modified: Thu, 10 Nov 2022 21:32:24 GMT  
		Size: 56.8 MB (56758527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6a3561b22a1c5d6d0052ed6e609a9b4f439038a3c9316e4a18d113bccb1cbb`  
		Last Modified: Thu, 10 Nov 2022 21:32:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3521a1d72476ad9583383dfcada876476cbebf359be2854f3719b473260f64`  
		Last Modified: Thu, 10 Nov 2022 21:32:11 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ecdb4041b3ae0840a5435e5c6d2ae2cf6a480e838b043cd029bc990ebfbbb2`  
		Last Modified: Thu, 10 Nov 2022 21:32:21 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2977a32ef333556aa544c36b6595d83f2cf92d76f429a58780b327eac6de9aca`  
		Last Modified: Thu, 10 Nov 2022 21:32:12 GMT  
		Size: 3.0 KB (3036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411efc41606a6fed8126df1e7a47259412bf23cca1aad6619f8bde287a1e2a81`  
		Last Modified: Thu, 10 Nov 2022 21:32:16 GMT  
		Size: 116.7 MB (116690815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a2c6540a466d20ce7e64cbabe62163e54d535f2a5f75f8b7dfaae489c50e8e`  
		Last Modified: Thu, 10 Nov 2022 21:32:11 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2022.1` - linux; ppc64le

```console
$ docker pull bonita@sha256:ed30ab3ec5061aff1dc71c87ce3b52a60cc3aacc160f8dcfd7692cf5f1c91383
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176142311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9e92713926d622cf557e08cf608df8445515cc2805d567604854576eabb7a1`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Tue, 09 Aug 2022 17:17:20 GMT
ADD file:be31abb0aba89ed5ff9200736a1c46091abc3845d0e332efd5e5c874ef2c99d1 in / 
# Tue, 09 Aug 2022 17:17:21 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 19:56:39 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 06 Oct 2022 19:56:48 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 06 Oct 2022 19:56:51 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 06 Oct 2022 19:56:52 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BONITA_VERSION
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BRANDING_VERSION
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BONITA_SHA256
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BASE_URL
# Thu, 06 Oct 2022 19:56:54 GMT
ARG BONITA_URL
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 06 Oct 2022 19:56:55 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 19:56:55 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 06 Oct 2022 19:56:55 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 19:56:56 GMT
RUN mkdir /opt/files
# Thu, 06 Oct 2022 19:56:57 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 06 Oct 2022 19:57:09 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 06 Oct 2022 19:57:11 GMT
ENV HTTP_API=false
# Thu, 06 Oct 2022 19:57:11 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 06 Oct 2022 19:57:12 GMT
ENV HTTP_API_PASSWORD=
# Thu, 06 Oct 2022 19:57:12 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 06 Oct 2022 19:57:12 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 06 Oct 2022 19:57:13 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 06 Oct 2022 19:57:13 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 06 Oct 2022 19:57:13 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 06 Oct 2022 19:57:15 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 06 Oct 2022 19:57:15 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 06 Oct 2022 19:57:15 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 06 Oct 2022 19:57:15 GMT
EXPOSE 8080 9000
# Thu, 06 Oct 2022 19:57:16 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 06 Oct 2022 19:57:16 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:deb7065b3304c3a9834f31b8a53e8d6089060e9c6522668abd22f1f4d9f52ca7`  
		Last Modified: Tue, 09 Aug 2022 17:18:45 GMT  
		Size: 2.8 MB (2812989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef077ba375222dadf88017804c6db49ec3e6c7c7dda2b13cfe326acb96e5573`  
		Last Modified: Thu, 06 Oct 2022 19:58:18 GMT  
		Size: 56.6 MB (56628443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9b2a0c46e4583581aea4b26d7e4888620778734b640fde9a243c60896a85c`  
		Last Modified: Thu, 06 Oct 2022 19:58:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d02cbac52ba92d847db176427502c97ac8cfce0205b8df2e17984291749fb48`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d063ca3ad4a351f1d87243e8704f415833c9636631b3c787fdabc5893e198`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8ea1f55b182c3f8c835160384e887986ba36466e0bc71aa145f0065f4198f0`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 3.0 KB (3032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679dc7c2196ec38ed7be31a96dd4f6c81db83b6e9a8bc4efd5f2edd63c8b4fbc`  
		Last Modified: Thu, 06 Oct 2022 19:58:14 GMT  
		Size: 116.7 MB (116690860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00f2bd54e8ef56344883e905c4ee8e2f08246937858fd47004be957103b17bb`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:2022.1-u0`

```console
$ docker pull bonita@sha256:0f038ccdde32fa4b90a855ec5bb41db8434cfbe432cecbcde8abd01c88b0ad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:2022.1-u0` - linux; amd64

```console
$ docker pull bonita@sha256:862fefb5c63bd62f0d955db355c2f3f4f22e193522753d8eedc527cd683c6d9e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180333199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bff25d56fe4420a99127f674a2df8588fc8fdf9319915429e3416e6f76dc008`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:14:09 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 06 Oct 2022 20:14:13 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 06 Oct 2022 20:14:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 06 Oct 2022 20:14:14 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 06 Oct 2022 20:14:14 GMT
ARG BONITA_VERSION
# Thu, 06 Oct 2022 20:14:14 GMT
ARG BRANDING_VERSION
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BONITA_SHA256
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BASE_URL
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BONITA_URL
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 06 Oct 2022 20:14:15 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 20:14:16 GMT
RUN mkdir /opt/files
# Thu, 06 Oct 2022 20:14:16 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 06 Oct 2022 20:14:30 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API_PASSWORD=
# Thu, 06 Oct 2022 20:14:31 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 06 Oct 2022 20:14:31 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 06 Oct 2022 20:14:31 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 06 Oct 2022 20:14:32 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 06 Oct 2022 20:14:32 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 06 Oct 2022 20:14:32 GMT
EXPOSE 8080 9000
# Thu, 06 Oct 2022 20:14:32 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 06 Oct 2022 20:14:32 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede2860654ad6d68046410f9ebec3dd9b9dca61c6fd599f0045a6f5741bf9d6`  
		Last Modified: Thu, 06 Oct 2022 20:15:08 GMT  
		Size: 60.8 MB (60808866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce69fcdc27b67a89739ff4629aa93b1c46f792c65d81f096c0f8a7d81a47728`  
		Last Modified: Thu, 06 Oct 2022 20:15:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af59dcbbf223b0ac4dc3fd0d01996906c078459ddaae9684440c4cea484b89c`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2805f0e33650a409f35745444bc7f23d5e82f697438025abb67df81ec03caf4`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173969905ee8acb031228953620f4d6f959d48886d22214974e9764c2d27e28a`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 3.0 KB (3031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce6ae14f1b5883093c182f12ce1d593988cae499bb4372256b0301c1b00e9e`  
		Last Modified: Thu, 06 Oct 2022 20:15:05 GMT  
		Size: 116.7 MB (116690804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98acc053b219affe2080f6ddfad206474004eda9666c5b092bf9fc90aa31659`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2022.1-u0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:92b3b92dc468cfc22704a83368c85d4758c878808548637ad8401f6ba78e5282
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a01742b56399308f70d74c2477c82b5f0562160950db295a6adb0b48e8dadf`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:31:09 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 10 Nov 2022 21:31:12 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 10 Nov 2022 21:31:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 10 Nov 2022 21:31:14 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BONITA_VERSION
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BRANDING_VERSION
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BONITA_SHA256
# Thu, 10 Nov 2022 21:31:15 GMT
ARG BASE_URL
# Thu, 10 Nov 2022 21:31:15 GMT
ARG BONITA_URL
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 10 Nov 2022 21:31:15 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 10 Nov 2022 21:31:16 GMT
RUN mkdir /opt/files
# Thu, 10 Nov 2022 21:31:16 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 10 Nov 2022 21:31:24 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API_PASSWORD=
# Thu, 10 Nov 2022 21:31:25 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 10 Nov 2022 21:31:25 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 10 Nov 2022 21:31:25 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 10 Nov 2022 21:31:26 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 10 Nov 2022 21:31:26 GMT
EXPOSE 8080 9000
# Thu, 10 Nov 2022 21:31:26 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 10 Nov 2022 21:31:26 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a3ecf9c0764240ea4a002e97a93756470158670ab2d476271c5dff63411aba`  
		Last Modified: Thu, 10 Nov 2022 21:32:24 GMT  
		Size: 56.8 MB (56758527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6a3561b22a1c5d6d0052ed6e609a9b4f439038a3c9316e4a18d113bccb1cbb`  
		Last Modified: Thu, 10 Nov 2022 21:32:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3521a1d72476ad9583383dfcada876476cbebf359be2854f3719b473260f64`  
		Last Modified: Thu, 10 Nov 2022 21:32:11 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ecdb4041b3ae0840a5435e5c6d2ae2cf6a480e838b043cd029bc990ebfbbb2`  
		Last Modified: Thu, 10 Nov 2022 21:32:21 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2977a32ef333556aa544c36b6595d83f2cf92d76f429a58780b327eac6de9aca`  
		Last Modified: Thu, 10 Nov 2022 21:32:12 GMT  
		Size: 3.0 KB (3036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411efc41606a6fed8126df1e7a47259412bf23cca1aad6619f8bde287a1e2a81`  
		Last Modified: Thu, 10 Nov 2022 21:32:16 GMT  
		Size: 116.7 MB (116690815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a2c6540a466d20ce7e64cbabe62163e54d535f2a5f75f8b7dfaae489c50e8e`  
		Last Modified: Thu, 10 Nov 2022 21:32:11 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2022.1-u0` - linux; ppc64le

```console
$ docker pull bonita@sha256:ed30ab3ec5061aff1dc71c87ce3b52a60cc3aacc160f8dcfd7692cf5f1c91383
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176142311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9e92713926d622cf557e08cf608df8445515cc2805d567604854576eabb7a1`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Tue, 09 Aug 2022 17:17:20 GMT
ADD file:be31abb0aba89ed5ff9200736a1c46091abc3845d0e332efd5e5c874ef2c99d1 in / 
# Tue, 09 Aug 2022 17:17:21 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 19:56:39 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 06 Oct 2022 19:56:48 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 06 Oct 2022 19:56:51 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 06 Oct 2022 19:56:52 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BONITA_VERSION
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BRANDING_VERSION
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BONITA_SHA256
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BASE_URL
# Thu, 06 Oct 2022 19:56:54 GMT
ARG BONITA_URL
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 06 Oct 2022 19:56:55 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 19:56:55 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 06 Oct 2022 19:56:55 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 19:56:56 GMT
RUN mkdir /opt/files
# Thu, 06 Oct 2022 19:56:57 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 06 Oct 2022 19:57:09 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 06 Oct 2022 19:57:11 GMT
ENV HTTP_API=false
# Thu, 06 Oct 2022 19:57:11 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 06 Oct 2022 19:57:12 GMT
ENV HTTP_API_PASSWORD=
# Thu, 06 Oct 2022 19:57:12 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 06 Oct 2022 19:57:12 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 06 Oct 2022 19:57:13 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 06 Oct 2022 19:57:13 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 06 Oct 2022 19:57:13 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 06 Oct 2022 19:57:15 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 06 Oct 2022 19:57:15 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 06 Oct 2022 19:57:15 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 06 Oct 2022 19:57:15 GMT
EXPOSE 8080 9000
# Thu, 06 Oct 2022 19:57:16 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 06 Oct 2022 19:57:16 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:deb7065b3304c3a9834f31b8a53e8d6089060e9c6522668abd22f1f4d9f52ca7`  
		Last Modified: Tue, 09 Aug 2022 17:18:45 GMT  
		Size: 2.8 MB (2812989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef077ba375222dadf88017804c6db49ec3e6c7c7dda2b13cfe326acb96e5573`  
		Last Modified: Thu, 06 Oct 2022 19:58:18 GMT  
		Size: 56.6 MB (56628443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9b2a0c46e4583581aea4b26d7e4888620778734b640fde9a243c60896a85c`  
		Last Modified: Thu, 06 Oct 2022 19:58:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d02cbac52ba92d847db176427502c97ac8cfce0205b8df2e17984291749fb48`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d063ca3ad4a351f1d87243e8704f415833c9636631b3c787fdabc5893e198`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8ea1f55b182c3f8c835160384e887986ba36466e0bc71aa145f0065f4198f0`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 3.0 KB (3032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679dc7c2196ec38ed7be31a96dd4f6c81db83b6e9a8bc4efd5f2edd63c8b4fbc`  
		Last Modified: Thu, 06 Oct 2022 19:58:14 GMT  
		Size: 116.7 MB (116690860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00f2bd54e8ef56344883e905c4ee8e2f08246937858fd47004be957103b17bb`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:2022.2`

```console
$ docker pull bonita@sha256:ab6c74c8f8157a5fca98141a6137586c41362da4a2e35a1a7b8e27aeb3d59a9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:2022.2` - linux; amd64

```console
$ docker pull bonita@sha256:af0b3309cef222dc7bb8eea0171365ce7c1f04c653ce1fcb88946269cbdaa1bb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183358999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9109ad12339446e49ea0fe59899c0fbc099861b68ba6dfff446717483f9db272`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:10:33 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 05:10:37 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 05:10:38 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 05:10:39 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 05:10:40 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 05:10:41 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 05:10:49 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 05:10:50 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 05:10:51 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 05:10:51 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 05:10:51 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 05:10:51 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 05:10:51 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f44ece23391fa62ec0b54a5223b0e83bf3afdf487aac2e8bcf40fceafe3c7f9`  
		Last Modified: Sat, 12 Nov 2022 05:11:27 GMT  
		Size: 61.3 MB (61349663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2f737142fcee545435fb87aad8ba19c0c5161b2123af22ed53f23cbbe74a40`  
		Last Modified: Sat, 12 Nov 2022 05:11:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b03e552725b71e9a3c2d21554036dbc8c8f37d789460fb85a83a2caf824e0a8`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8381b9f3f89adb3f9b9d686274b546978dcc1f8be9c09645ca12db9a3c0fa144`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e828375313adaa2ecd577320401dd912202ef128213370630fa123ddf458322`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cbec32dd5245f88019c4158f869ef58fdc51e7151d35b1adbcbb4d987469d0`  
		Last Modified: Sat, 12 Nov 2022 05:11:23 GMT  
		Size: 119.2 MB (119193030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ac6aa1740a5547ebbd19730284cda96651ea618939ce1a72b2db0103764307`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2022.2` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:bde00eff2d5e13f1c0f5a0f252e7c53e25c810d4451913d76329abfd16f89f88
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182510902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afb8eb0b9144f3d0cdcba7e22c5cad653298929ff2c0800dee8831210724443`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:12:26 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:12:30 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:12:31 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:12:32 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:12:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:33 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:12:33 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:12:41 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:12:43 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:12:43 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:12:43 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:12:43 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:12:43 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:12:43 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce4c0a72e6d1f312d742245a673d03cf1c1a40071986286029e0a00a67480f`  
		Last Modified: Sat, 12 Nov 2022 04:13:20 GMT  
		Size: 60.6 MB (60600121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caf2b4f26366c9aae2cf0ff0f36b0ac4bf366208f938eeeab3b21f32657639c`  
		Last Modified: Sat, 12 Nov 2022 04:13:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835deb94e6aaa2b983a18fb02dd0f8170a3e79b46ce9d67fe76b9390ccf1a12`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c66d5ecba2c4fc8f635b2b2e3954ef6e3f2a3c9e881e00c59b35ed8f0e7c7b3`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dab80d34b1704dded6340f627700423b28bf8257b13c50a5812a341a71de0c`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 3.0 KB (3044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ab7f4c30d1b1e3a2e766637f44f630946117f6aa4b404086c57031afef18d2`  
		Last Modified: Sat, 12 Nov 2022 04:13:15 GMT  
		Size: 119.2 MB (119192997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60912611891a306ce975f3597861cc95698c4f4831b69483b30193d2fbfe64d4`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2022.2` - linux; ppc64le

```console
$ docker pull bonita@sha256:bc646851cea3a34aaeab8a829e05dec0b922b6c5e8f164f1a5388a6c04c5efa3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179512965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c6f360acaa7279b69d25d1ad4db629ebbbcbc5e6745a637f19029edd7bf16`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:33:08 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:33:24 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:33:27 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:33:28 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:33:28 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:33:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:34 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:33:34 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:33:52 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:33:54 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:33:55 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:33:55 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:33:58 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:33:58 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:33:58 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:33:58 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:33:59 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59594f530089b9a64ebc37b50c12ff83c1569c34d1d31a8d9f8eafd01bc0d8`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 57.5 MB (57508396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dfbbf9fbe77af1267d6ef466813e355c78a4b827f69744a76a1178c1165a9c`  
		Last Modified: Sat, 12 Nov 2022 04:34:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba451e84465bdf445877d0098a73aa0811961f2d4d03eb32f40162e5aeeba26f`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88b20935842b33aa0fadf0982a1cc1a4522a21dcc3d7d0062187c68adece9fd`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540c740bc35002c6104e6212b741283455567c9395bbb50870b249cec397295`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717fd7aec4ecaedcffa16c8c06fcfc48e41141994da313ea21f63164fa3d8692`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 119.2 MB (119192984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7709ea2302b6abbd61cdf354155d561cec710e2f3db1efb45fe3bb7803466be8`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:2022.2-u0`

```console
$ docker pull bonita@sha256:ab6c74c8f8157a5fca98141a6137586c41362da4a2e35a1a7b8e27aeb3d59a9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:2022.2-u0` - linux; amd64

```console
$ docker pull bonita@sha256:af0b3309cef222dc7bb8eea0171365ce7c1f04c653ce1fcb88946269cbdaa1bb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183358999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9109ad12339446e49ea0fe59899c0fbc099861b68ba6dfff446717483f9db272`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:10:33 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 05:10:37 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 05:10:38 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 05:10:39 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 05:10:40 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 05:10:41 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 05:10:49 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 05:10:50 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 05:10:51 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 05:10:51 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 05:10:51 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 05:10:51 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 05:10:51 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f44ece23391fa62ec0b54a5223b0e83bf3afdf487aac2e8bcf40fceafe3c7f9`  
		Last Modified: Sat, 12 Nov 2022 05:11:27 GMT  
		Size: 61.3 MB (61349663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2f737142fcee545435fb87aad8ba19c0c5161b2123af22ed53f23cbbe74a40`  
		Last Modified: Sat, 12 Nov 2022 05:11:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b03e552725b71e9a3c2d21554036dbc8c8f37d789460fb85a83a2caf824e0a8`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8381b9f3f89adb3f9b9d686274b546978dcc1f8be9c09645ca12db9a3c0fa144`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e828375313adaa2ecd577320401dd912202ef128213370630fa123ddf458322`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cbec32dd5245f88019c4158f869ef58fdc51e7151d35b1adbcbb4d987469d0`  
		Last Modified: Sat, 12 Nov 2022 05:11:23 GMT  
		Size: 119.2 MB (119193030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ac6aa1740a5547ebbd19730284cda96651ea618939ce1a72b2db0103764307`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2022.2-u0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:bde00eff2d5e13f1c0f5a0f252e7c53e25c810d4451913d76329abfd16f89f88
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182510902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afb8eb0b9144f3d0cdcba7e22c5cad653298929ff2c0800dee8831210724443`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:12:26 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:12:30 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:12:31 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:12:32 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:12:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:33 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:12:33 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:12:41 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:12:43 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:12:43 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:12:43 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:12:43 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:12:43 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:12:43 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce4c0a72e6d1f312d742245a673d03cf1c1a40071986286029e0a00a67480f`  
		Last Modified: Sat, 12 Nov 2022 04:13:20 GMT  
		Size: 60.6 MB (60600121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caf2b4f26366c9aae2cf0ff0f36b0ac4bf366208f938eeeab3b21f32657639c`  
		Last Modified: Sat, 12 Nov 2022 04:13:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835deb94e6aaa2b983a18fb02dd0f8170a3e79b46ce9d67fe76b9390ccf1a12`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c66d5ecba2c4fc8f635b2b2e3954ef6e3f2a3c9e881e00c59b35ed8f0e7c7b3`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dab80d34b1704dded6340f627700423b28bf8257b13c50a5812a341a71de0c`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 3.0 KB (3044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ab7f4c30d1b1e3a2e766637f44f630946117f6aa4b404086c57031afef18d2`  
		Last Modified: Sat, 12 Nov 2022 04:13:15 GMT  
		Size: 119.2 MB (119192997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60912611891a306ce975f3597861cc95698c4f4831b69483b30193d2fbfe64d4`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:2022.2-u0` - linux; ppc64le

```console
$ docker pull bonita@sha256:bc646851cea3a34aaeab8a829e05dec0b922b6c5e8f164f1a5388a6c04c5efa3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179512965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c6f360acaa7279b69d25d1ad4db629ebbbcbc5e6745a637f19029edd7bf16`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:33:08 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:33:24 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:33:27 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:33:28 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:33:28 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:33:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:34 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:33:34 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:33:52 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:33:54 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:33:55 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:33:55 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:33:58 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:33:58 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:33:58 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:33:58 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:33:59 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59594f530089b9a64ebc37b50c12ff83c1569c34d1d31a8d9f8eafd01bc0d8`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 57.5 MB (57508396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dfbbf9fbe77af1267d6ef466813e355c78a4b827f69744a76a1178c1165a9c`  
		Last Modified: Sat, 12 Nov 2022 04:34:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba451e84465bdf445877d0098a73aa0811961f2d4d03eb32f40162e5aeeba26f`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88b20935842b33aa0fadf0982a1cc1a4522a21dcc3d7d0062187c68adece9fd`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540c740bc35002c6104e6212b741283455567c9395bbb50870b249cec397295`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717fd7aec4ecaedcffa16c8c06fcfc48e41141994da313ea21f63164fa3d8692`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 119.2 MB (119192984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7709ea2302b6abbd61cdf354155d561cec710e2f3db1efb45fe3bb7803466be8`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.12`

```console
$ docker pull bonita@sha256:f1247b05a5ebff45eac4f65edd326371c26bc89890487501c40b94cbbd9c9bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.12` - linux; amd64

```console
$ docker pull bonita@sha256:ca178d8d370522e43f6bef14711714b06e1b83189f9587cac0c0171bdb153ff6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235201515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9514768a183879e184ccbd009e9832942567680c52e4572542dbc4dbaf24dd4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:05:25 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:06:35 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:06:36 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:06:38 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:06:39 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:06:39 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 19:06:39 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:06:40 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 19:06:40 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:06:41 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 19:06:50 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 19:06:52 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 19:06:53 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 19:06:53 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:06:53 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:06:53 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:06:53 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9773e32438a2b3a0096989143a42027e4563689429197843e376b3650d9b050e`  
		Last Modified: Mon, 02 Jan 2023 19:08:17 GMT  
		Size: 91.6 MB (91557485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558fa62f83ba0c0660da8e40177bcc828b9aa13bcefb581738f197994df6a640`  
		Last Modified: Mon, 02 Jan 2023 19:08:06 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1a64d961b244c5bfdfaba569454c83d6f95d8f589c32afbb2e27eb3075b43d`  
		Last Modified: Mon, 02 Jan 2023 19:08:06 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3795b27a8dcbfba90b0d61033398c5fe85c15a992d5876706d1e308788d14f9`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 506.3 KB (506347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffd6d2ad9883b4bdcefe36879a9237a6e25fbf5513cbc05e7f035b174d09ef5`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bab7623ff2b67274fd60958fd12bc968a1d8da7778980998bb5de1462e2279f`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 6.9 KB (6944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde99923d28faffae608b1824473f4197c988a4a679f070b1d872976120dbfeb`  
		Last Modified: Mon, 02 Jan 2023 19:08:09 GMT  
		Size: 116.4 MB (116415405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6a4ef1f567ec250fa7a6364c79a71f10c831f6696c651abeab28db92dee55`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.12` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:42474f525b202f8b5d2590389e855f901b63c3f6eea8312f74200342cff2f193
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226682960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a38bae78b52e90d82794bb8aab6df931b68be26d855e20dea89a300f2e104b6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:42:44 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 18:44:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:44:12 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 18:44:13 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 18:44:16 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 18:44:17 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 18:44:17 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 18:44:18 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 18:44:18 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 18:44:24 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 18:44:25 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 18:44:26 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 18:44:26 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 18:44:26 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 18:44:26 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 18:44:26 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e354ecc565fc3de85c594042291dc1c5de70a5d1521171d3a3155e73921ed63`  
		Last Modified: Mon, 02 Jan 2023 18:45:48 GMT  
		Size: 86.0 MB (86045685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a886800f0fb6cc0a8c9878f1630c7ad3ea5cc622eb7601343c8e8713dfef1d5`  
		Last Modified: Mon, 02 Jan 2023 18:45:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad010153362dfca28248b1f6fa4d5aeaa1850fb8ab14399e17b06f8c8f4b655`  
		Last Modified: Mon, 02 Jan 2023 18:45:39 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a7013f18a605bb1907153acd009d7b83aaa4cc3fd62d351ae8dd6862ea5ea`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 475.8 KB (475808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e415c26483eb06ed564d4c70e641e5863e71904b8f2bea726ae3c52a3fd4b`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02506338c174b1b9980625c978d87043dc66167fc23a3446943a7d5365ed512`  
		Last Modified: Mon, 02 Jan 2023 18:45:37 GMT  
		Size: 6.9 KB (6946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6143fece73fea2145dcfd69c29549612fda7df68d55715178b89c7d9b55943`  
		Last Modified: Mon, 02 Jan 2023 18:45:42 GMT  
		Size: 116.4 MB (116415406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304dbddeb9bbcdf0d1cdbfee97767db38c21d7ad2120aaf54679749355f90442`  
		Last Modified: Mon, 02 Jan 2023 18:45:37 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.12` - linux; ppc64le

```console
$ docker pull bonita@sha256:778bd6c622b603d95d2ded9c68826de7b76333783a328118a0da07f737f8cad8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234183004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8330af9c755a662daf47a4035649d3f74b559e43088624be92e4e39ba2735bd9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:19:02 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:20:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:20:46 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:20:48 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:20:52 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:20:52 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:20:53 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:20:53 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:20:54 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:20:54 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:20:54 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 19:20:55 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 19:20:55 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 19:20:55 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:20:56 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:20:56 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:20:57 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 19:20:58 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:20:59 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 19:21:06 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 19:21:09 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 19:21:11 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 19:21:11 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:21:12 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:21:12 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:21:13 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5921307a308498a8a853a7c2f5f04660313efdaccfb7ca0349f4ec0e6308cfc`  
		Last Modified: Mon, 02 Jan 2023 19:23:57 GMT  
		Size: 86.8 MB (86838913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195ef5a230ffa21f61a83d4ebd0265f8f2dbf1b89f7c8f4e786b3414d7fffbc5`  
		Last Modified: Mon, 02 Jan 2023 19:23:37 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0108e6e920a458efb7a5038aa6831cdfb3ef513845153e699083b86483cc1ee`  
		Last Modified: Mon, 02 Jan 2023 19:23:37 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358b45853f6dab00820d28109b72fb4a02394e2e92d1a90aaa239d7215e1e8a`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 475.3 KB (475349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6d5e0d9b051a3ee6ade45e2432fb64f2f7afbe8bb14c83da758c047f24e47`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc14e48b10cd374d4869c0fe7e8cc875ecb8239d613d3dce9abb484af416d22`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf5cfa50e953b190e117aacaddc51ee21598734b165243dae8a8d2c282735a`  
		Last Modified: Mon, 02 Jan 2023 19:23:44 GMT  
		Size: 116.4 MB (116415405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855855566d206f73e1cf9725cd37214634ac32c000398a7947e62aa47f0a0fb0`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.12.1`

```console
$ docker pull bonita@sha256:f1247b05a5ebff45eac4f65edd326371c26bc89890487501c40b94cbbd9c9bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.12.1` - linux; amd64

```console
$ docker pull bonita@sha256:ca178d8d370522e43f6bef14711714b06e1b83189f9587cac0c0171bdb153ff6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235201515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9514768a183879e184ccbd009e9832942567680c52e4572542dbc4dbaf24dd4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:05:25 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:06:35 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:06:36 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:06:38 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:06:38 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:06:39 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:06:39 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 19:06:39 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:06:39 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:06:40 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 19:06:40 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:06:41 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 19:06:50 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 19:06:52 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 19:06:53 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 19:06:53 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:06:53 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:06:53 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:06:53 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9773e32438a2b3a0096989143a42027e4563689429197843e376b3650d9b050e`  
		Last Modified: Mon, 02 Jan 2023 19:08:17 GMT  
		Size: 91.6 MB (91557485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558fa62f83ba0c0660da8e40177bcc828b9aa13bcefb581738f197994df6a640`  
		Last Modified: Mon, 02 Jan 2023 19:08:06 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1a64d961b244c5bfdfaba569454c83d6f95d8f589c32afbb2e27eb3075b43d`  
		Last Modified: Mon, 02 Jan 2023 19:08:06 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3795b27a8dcbfba90b0d61033398c5fe85c15a992d5876706d1e308788d14f9`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 506.3 KB (506347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffd6d2ad9883b4bdcefe36879a9237a6e25fbf5513cbc05e7f035b174d09ef5`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bab7623ff2b67274fd60958fd12bc968a1d8da7778980998bb5de1462e2279f`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 6.9 KB (6944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde99923d28faffae608b1824473f4197c988a4a679f070b1d872976120dbfeb`  
		Last Modified: Mon, 02 Jan 2023 19:08:09 GMT  
		Size: 116.4 MB (116415405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6a4ef1f567ec250fa7a6364c79a71f10c831f6696c651abeab28db92dee55`  
		Last Modified: Mon, 02 Jan 2023 19:08:04 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.12.1` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:42474f525b202f8b5d2590389e855f901b63c3f6eea8312f74200342cff2f193
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226682960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a38bae78b52e90d82794bb8aab6df931b68be26d855e20dea89a300f2e104b6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:42:44 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 18:44:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:44:12 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 18:44:13 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 18:44:16 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 18:44:16 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 18:44:17 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 18:44:17 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 18:44:17 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 18:44:18 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 18:44:18 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 18:44:24 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 18:44:25 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 18:44:26 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 18:44:26 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 18:44:26 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 18:44:26 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 18:44:26 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e354ecc565fc3de85c594042291dc1c5de70a5d1521171d3a3155e73921ed63`  
		Last Modified: Mon, 02 Jan 2023 18:45:48 GMT  
		Size: 86.0 MB (86045685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a886800f0fb6cc0a8c9878f1630c7ad3ea5cc622eb7601343c8e8713dfef1d5`  
		Last Modified: Mon, 02 Jan 2023 18:45:39 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad010153362dfca28248b1f6fa4d5aeaa1850fb8ab14399e17b06f8c8f4b655`  
		Last Modified: Mon, 02 Jan 2023 18:45:39 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a7013f18a605bb1907153acd009d7b83aaa4cc3fd62d351ae8dd6862ea5ea`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 475.8 KB (475808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e415c26483eb06ed564d4c70e641e5863e71904b8f2bea726ae3c52a3fd4b`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02506338c174b1b9980625c978d87043dc66167fc23a3446943a7d5365ed512`  
		Last Modified: Mon, 02 Jan 2023 18:45:37 GMT  
		Size: 6.9 KB (6946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6143fece73fea2145dcfd69c29549612fda7df68d55715178b89c7d9b55943`  
		Last Modified: Mon, 02 Jan 2023 18:45:42 GMT  
		Size: 116.4 MB (116415406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304dbddeb9bbcdf0d1cdbfee97767db38c21d7ad2120aaf54679749355f90442`  
		Last Modified: Mon, 02 Jan 2023 18:45:37 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.12.1` - linux; ppc64le

```console
$ docker pull bonita@sha256:778bd6c622b603d95d2ded9c68826de7b76333783a328118a0da07f737f8cad8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234183004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8330af9c755a662daf47a4035649d3f74b559e43088624be92e4e39ba2735bd9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:19:02 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:20:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:20:46 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:20:48 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:20:52 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:20:52 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:20:53 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:20:53 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:20:54 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:20:54 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:20:54 GMT
ENV BONITA_VERSION=7.12.1
# Mon, 02 Jan 2023 19:20:55 GMT
ENV BRANDING_VERSION=2021.1
# Mon, 02 Jan 2023 19:20:55 GMT
ENV BONITA_SHA256=5342b18dd7f93bd3b2b64f8587504d0bf324f4f84d4259191b7291ee8f9ec693
# Mon, 02 Jan 2023 19:20:55 GMT
ENV ZIP_FILE=BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:20:56 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:20:56 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.1/BonitaCommunity-2021.1.zip
# Mon, 02 Jan 2023 19:20:57 GMT
RUN echo "Downloading Bonita from url: ${BONITA_URL}"
# Mon, 02 Jan 2023 19:20:58 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:20:59 GMT
COPY dir:ceba4393fbbad2e791e9b0a75d4a81330c328bd9f67f35ff002adea48d26a677 in /opt/files 
# Mon, 02 Jan 2023 19:21:06 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi
# Mon, 02 Jan 2023 19:21:09 GMT
RUN sha256sum /opt/files/${ZIP_FILE}
# Mon, 02 Jan 2023 19:21:11 GMT
RUN echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -
# Mon, 02 Jan 2023 19:21:11 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:21:12 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:21:12 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:21:13 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5921307a308498a8a853a7c2f5f04660313efdaccfb7ca0349f4ec0e6308cfc`  
		Last Modified: Mon, 02 Jan 2023 19:23:57 GMT  
		Size: 86.8 MB (86838913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195ef5a230ffa21f61a83d4ebd0265f8f2dbf1b89f7c8f4e786b3414d7fffbc5`  
		Last Modified: Mon, 02 Jan 2023 19:23:37 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0108e6e920a458efb7a5038aa6831cdfb3ef513845153e699083b86483cc1ee`  
		Last Modified: Mon, 02 Jan 2023 19:23:37 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0358b45853f6dab00820d28109b72fb4a02394e2e92d1a90aaa239d7215e1e8a`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 475.3 KB (475349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6d5e0d9b051a3ee6ade45e2432fb64f2f7afbe8bb14c83da758c047f24e47`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc14e48b10cd374d4869c0fe7e8cc875ecb8239d613d3dce9abb484af416d22`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf5cfa50e953b190e117aacaddc51ee21598734b165243dae8a8d2c282735a`  
		Last Modified: Mon, 02 Jan 2023 19:23:44 GMT  
		Size: 116.4 MB (116415405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855855566d206f73e1cf9725cd37214634ac32c000398a7947e62aa47f0a0fb0`  
		Last Modified: Mon, 02 Jan 2023 19:23:35 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.13`

```console
$ docker pull bonita@sha256:afa385216ea5ee294df26ca400d0a3c5ae8dbdeae9963416fba6127e492ae31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.13` - linux; amd64

```console
$ docker pull bonita@sha256:920b78354fc4bee190a5ce415e6096f44cc9d83977945081b54f126a89586c0e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232934453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9d23612834b5490b94cd75fa26d93f23a07c72475a105aa5583f2c3fc9b029`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:05:25 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:07:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:07:25 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:07:25 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:07:28 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:07:29 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:07:29 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 19:07:29 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:07:30 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:07:30 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 19:07:39 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 19:07:40 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 19:07:40 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:07:40 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:07:41 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:07:41 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bfcd0240d95d420d30c58f6b9019529ac7036720699f2d5b68081a9df9a04b`  
		Last Modified: Mon, 02 Jan 2023 19:08:42 GMT  
		Size: 91.6 MB (91557405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54b8fc0b9621150d563dd6cf9d717e8236cdc46c7c8d4db5f04bfa0a8619c73`  
		Last Modified: Mon, 02 Jan 2023 19:08:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86f09f0ddc1ebe57f387df1c1fde4b38940ea27861343113c13416f64c94811`  
		Last Modified: Mon, 02 Jan 2023 19:08:30 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3733e835f8a91707ce94fb1d8c38225b10365e098d28d927f7ee7a07c7ea6b`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 930.5 KB (930478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f27eb22287e877cb2824a6d40fa59e3f0fc61254e02f3be79d1e065d1d1c7`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e791908b3c80fde08666488ea98a4ebcef52de72719a19085ce19c145747fe31`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdbc40bce144581d43c72ba4209cf2ed6378d2aefca4911bfd630a1f1f8b904`  
		Last Modified: Mon, 02 Jan 2023 19:08:34 GMT  
		Size: 113.7 MB (113727935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8563834929b2ac16d39e7b27d572b84fb9faaa7638fc109befb17cea8d05f2cc`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.13` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1b93a4c46540385205eae0e3a60ae86409894fddd203ff94acad00c61935f14b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224375622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1bf5171820c29ad84ee87ce862fa54ce0feb44c872b045ff7dff574e3e4935`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:42:44 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 18:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:44:53 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 18:44:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 18:44:57 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 18:44:57 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 18:44:58 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 18:44:58 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 18:45:06 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 18:45:06 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 18:45:07 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 18:45:07 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 18:45:08 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 18:45:09 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4231fbbb4a703e890c2d6e1eff629dedebd8fb76eac5c1f1f089bcfe1aff016`  
		Last Modified: Mon, 02 Jan 2023 18:46:09 GMT  
		Size: 86.0 MB (86045695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c8021bf85540e48c8f91952cf5abe4d7c1891fc22f98929f81c9fec8726b7e`  
		Last Modified: Mon, 02 Jan 2023 18:46:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b24ca02958edf75b3c547a94b29c90e37477c96f445731d1e95ebb26465dd2`  
		Last Modified: Mon, 02 Jan 2023 18:46:00 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e387cbb50ab95490a87e0bab79f403ab56434ea471c4c5513746a02de8e18581`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 859.6 KB (859580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a98b39d0bdeaabd0529b14ea00be38bc7bbbc779461972c3882a68a2aa46da`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb14f04e5e99a8cb55903d0da4baa337526499368fd4e2aa6b748798d4472fe`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2957f337533cddb4c1873cf4b3900e1e6186d243600db2f394e185efa7e282`  
		Last Modified: Mon, 02 Jan 2023 18:46:04 GMT  
		Size: 113.7 MB (113727934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54006f9aa17b40a5097a97075fcfd63d24fd8e1ece2342586c660b5ad759049c`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.13` - linux; ppc64le

```console
$ docker pull bonita@sha256:9de7769f34a2643eea2c81fa35a3a235f7eb004b6c15929e3fbb899b8e12df3e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231847028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc0df2b93c19fd171a31e858df9cacf7cba1b021c9f0a9ce880a29a114471f3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:19:02 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:22:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:22:13 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:22:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:22:18 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:22:18 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:22:18 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:22:19 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:22:19 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:22:20 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:22:20 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 19:22:20 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 19:22:21 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 19:22:21 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:22:21 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:22:22 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:22:23 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:22:23 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 19:22:37 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 19:22:38 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 19:22:41 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:22:42 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:22:44 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:22:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a066585437caa02e061b93d173570b76c41646720750ffb9ff6fa888462186`  
		Last Modified: Mon, 02 Jan 2023 19:24:32 GMT  
		Size: 86.8 MB (86837826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848367c572cf12cae55844aa4215d917ca1db306d7fb02958d2166e842e1bbf`  
		Last Modified: Mon, 02 Jan 2023 19:24:13 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8502c10d0f24df65a786d610583484cd60a7253a909bb4e0f5462b8e11d4ccc7`  
		Last Modified: Mon, 02 Jan 2023 19:24:13 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7e2eacd9a7d06a9ba724e1c64ca2792b483d0ab277920f45c927160536d06f`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 831.6 KB (831591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df00de9b2a2b5a6eef1bbb347dc5330fc476f401e04f73a2443d6011e9a3be97`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e0b0079700b15885f19b7577d97c7cba3d766500e6cd2d0e58110e91914b4d`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79b7b5bf71b3530953cf2a6184346b31530ea1d2d80c4b662d9ba7c9915a936`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 113.7 MB (113727924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd563718e21db3320e9458d69b7c301ee4ca7d2ea81f00d545ace289a3a8c9ab`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.13.0`

```console
$ docker pull bonita@sha256:afa385216ea5ee294df26ca400d0a3c5ae8dbdeae9963416fba6127e492ae31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.13.0` - linux; amd64

```console
$ docker pull bonita@sha256:920b78354fc4bee190a5ce415e6096f44cc9d83977945081b54f126a89586c0e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232934453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9d23612834b5490b94cd75fa26d93f23a07c72475a105aa5583f2c3fc9b029`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:05:25 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:07:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:07:25 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:07:25 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:07:28 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:07:28 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:07:29 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:07:29 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 19:07:29 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:07:29 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:07:30 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:07:30 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 19:07:39 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 19:07:40 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 19:07:40 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:07:40 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:07:41 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:07:41 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bfcd0240d95d420d30c58f6b9019529ac7036720699f2d5b68081a9df9a04b`  
		Last Modified: Mon, 02 Jan 2023 19:08:42 GMT  
		Size: 91.6 MB (91557405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54b8fc0b9621150d563dd6cf9d717e8236cdc46c7c8d4db5f04bfa0a8619c73`  
		Last Modified: Mon, 02 Jan 2023 19:08:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86f09f0ddc1ebe57f387df1c1fde4b38940ea27861343113c13416f64c94811`  
		Last Modified: Mon, 02 Jan 2023 19:08:30 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3733e835f8a91707ce94fb1d8c38225b10365e098d28d927f7ee7a07c7ea6b`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 930.5 KB (930478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f27eb22287e877cb2824a6d40fa59e3f0fc61254e02f3be79d1e065d1d1c7`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e791908b3c80fde08666488ea98a4ebcef52de72719a19085ce19c145747fe31`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdbc40bce144581d43c72ba4209cf2ed6378d2aefca4911bfd630a1f1f8b904`  
		Last Modified: Mon, 02 Jan 2023 19:08:34 GMT  
		Size: 113.7 MB (113727935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8563834929b2ac16d39e7b27d572b84fb9faaa7638fc109befb17cea8d05f2cc`  
		Last Modified: Mon, 02 Jan 2023 19:08:28 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.13.0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1b93a4c46540385205eae0e3a60ae86409894fddd203ff94acad00c61935f14b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224375622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1bf5171820c29ad84ee87ce862fa54ce0feb44c872b045ff7dff574e3e4935`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:42:44 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 18:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:44:53 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 18:44:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 18:44:57 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 18:44:57 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 18:44:57 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 18:44:57 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 18:44:58 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 18:44:58 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 18:45:06 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 18:45:06 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 18:45:07 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 18:45:07 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 18:45:08 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 18:45:09 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4231fbbb4a703e890c2d6e1eff629dedebd8fb76eac5c1f1f089bcfe1aff016`  
		Last Modified: Mon, 02 Jan 2023 18:46:09 GMT  
		Size: 86.0 MB (86045695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c8021bf85540e48c8f91952cf5abe4d7c1891fc22f98929f81c9fec8726b7e`  
		Last Modified: Mon, 02 Jan 2023 18:46:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b24ca02958edf75b3c547a94b29c90e37477c96f445731d1e95ebb26465dd2`  
		Last Modified: Mon, 02 Jan 2023 18:46:00 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e387cbb50ab95490a87e0bab79f403ab56434ea471c4c5513746a02de8e18581`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 859.6 KB (859580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a98b39d0bdeaabd0529b14ea00be38bc7bbbc779461972c3882a68a2aa46da`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb14f04e5e99a8cb55903d0da4baa337526499368fd4e2aa6b748798d4472fe`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2957f337533cddb4c1873cf4b3900e1e6186d243600db2f394e185efa7e282`  
		Last Modified: Mon, 02 Jan 2023 18:46:04 GMT  
		Size: 113.7 MB (113727934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54006f9aa17b40a5097a97075fcfd63d24fd8e1ece2342586c660b5ad759049c`  
		Last Modified: Mon, 02 Jan 2023 18:45:59 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.13.0` - linux; ppc64le

```console
$ docker pull bonita@sha256:9de7769f34a2643eea2c81fa35a3a235f7eb004b6c15929e3fbb899b8e12df3e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231847028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc0df2b93c19fd171a31e858df9cacf7cba1b021c9f0a9ce880a29a114471f3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:19:02 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Mon, 02 Jan 2023 19:22:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends       curl       gnupg2       mysql-client-core-5.7       openjdk-11-jre-headless       postgresql-client       unzip       zip   && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:22:13 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 02 Jan 2023 19:22:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 02 Jan 2023 19:22:18 GMT
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.13/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 02 Jan 2023 19:22:18 GMT
ARG BONITA_VERSION
# Mon, 02 Jan 2023 19:22:18 GMT
ARG BRANDING_VERSION
# Mon, 02 Jan 2023 19:22:19 GMT
ARG BONITA_SHA256
# Mon, 02 Jan 2023 19:22:19 GMT
ARG BASE_URL
# Mon, 02 Jan 2023 19:22:20 GMT
ARG BONITA_URL
# Mon, 02 Jan 2023 19:22:20 GMT
ENV BONITA_VERSION=7.13.0
# Mon, 02 Jan 2023 19:22:20 GMT
ENV BRANDING_VERSION=2021.2-u0
# Mon, 02 Jan 2023 19:22:21 GMT
ENV BONITA_SHA256=e4f279765cd729885a4e353d96d1d85c5f69fef63f79183e0ccf3ffaa0cb2417
# Mon, 02 Jan 2023 19:22:21 GMT
ENV ZIP_FILE=BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:22:21 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Mon, 02 Jan 2023 19:22:22 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2021.2-u0/BonitaCommunity-2021.2-u0.zip
# Mon, 02 Jan 2023 19:22:23 GMT
RUN mkdir /opt/files
# Mon, 02 Jan 2023 19:22:23 GMT
COPY dir:6250b774ea0abc098d97c259e44608a8bf8835310bd84b47cecb5b027fb6826b in /opt/files 
# Mon, 02 Jan 2023 19:22:37 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip; fi   && sha256sum /opt/files/${ZIP_FILE}   && echo "$BONITA_SHA256" /opt/files/${ZIP_FILE} | sha256sum -c -   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && unzip /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war -d /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita/   && rm /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip
# Mon, 02 Jan 2023 19:22:38 GMT
ENV HTTP_API=false
# Mon, 02 Jan 2023 19:22:41 GMT
VOLUME [/opt/bonita]
# Mon, 02 Jan 2023 19:22:42 GMT
COPY dir:c3e962ef70138930cdc6c114f07b10cd87f0a7897e828b1cf0f64aa4e7f29ecb in /opt/templates 
# Mon, 02 Jan 2023 19:22:44 GMT
EXPOSE 8080
# Mon, 02 Jan 2023 19:22:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a066585437caa02e061b93d173570b76c41646720750ffb9ff6fa888462186`  
		Last Modified: Mon, 02 Jan 2023 19:24:32 GMT  
		Size: 86.8 MB (86837826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848367c572cf12cae55844aa4215d917ca1db306d7fb02958d2166e842e1bbf`  
		Last Modified: Mon, 02 Jan 2023 19:24:13 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8502c10d0f24df65a786d610583484cd60a7253a909bb4e0f5462b8e11d4ccc7`  
		Last Modified: Mon, 02 Jan 2023 19:24:13 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7e2eacd9a7d06a9ba724e1c64ca2792b483d0ab277920f45c927160536d06f`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 831.6 KB (831591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df00de9b2a2b5a6eef1bbb347dc5330fc476f401e04f73a2443d6011e9a3be97`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e0b0079700b15885f19b7577d97c7cba3d766500e6cd2d0e58110e91914b4d`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79b7b5bf71b3530953cf2a6184346b31530ea1d2d80c4b662d9ba7c9915a936`  
		Last Modified: Mon, 02 Jan 2023 19:24:21 GMT  
		Size: 113.7 MB (113727924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd563718e21db3320e9458d69b7c301ee4ca7d2ea81f00d545ace289a3a8c9ab`  
		Last Modified: Mon, 02 Jan 2023 19:24:11 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.14`

```console
$ docker pull bonita@sha256:0f038ccdde32fa4b90a855ec5bb41db8434cfbe432cecbcde8abd01c88b0ad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.14` - linux; amd64

```console
$ docker pull bonita@sha256:862fefb5c63bd62f0d955db355c2f3f4f22e193522753d8eedc527cd683c6d9e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180333199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bff25d56fe4420a99127f674a2df8588fc8fdf9319915429e3416e6f76dc008`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:14:09 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 06 Oct 2022 20:14:13 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 06 Oct 2022 20:14:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 06 Oct 2022 20:14:14 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 06 Oct 2022 20:14:14 GMT
ARG BONITA_VERSION
# Thu, 06 Oct 2022 20:14:14 GMT
ARG BRANDING_VERSION
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BONITA_SHA256
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BASE_URL
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BONITA_URL
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 06 Oct 2022 20:14:15 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 20:14:16 GMT
RUN mkdir /opt/files
# Thu, 06 Oct 2022 20:14:16 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 06 Oct 2022 20:14:30 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API_PASSWORD=
# Thu, 06 Oct 2022 20:14:31 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 06 Oct 2022 20:14:31 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 06 Oct 2022 20:14:31 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 06 Oct 2022 20:14:32 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 06 Oct 2022 20:14:32 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 06 Oct 2022 20:14:32 GMT
EXPOSE 8080 9000
# Thu, 06 Oct 2022 20:14:32 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 06 Oct 2022 20:14:32 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede2860654ad6d68046410f9ebec3dd9b9dca61c6fd599f0045a6f5741bf9d6`  
		Last Modified: Thu, 06 Oct 2022 20:15:08 GMT  
		Size: 60.8 MB (60808866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce69fcdc27b67a89739ff4629aa93b1c46f792c65d81f096c0f8a7d81a47728`  
		Last Modified: Thu, 06 Oct 2022 20:15:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af59dcbbf223b0ac4dc3fd0d01996906c078459ddaae9684440c4cea484b89c`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2805f0e33650a409f35745444bc7f23d5e82f697438025abb67df81ec03caf4`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173969905ee8acb031228953620f4d6f959d48886d22214974e9764c2d27e28a`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 3.0 KB (3031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce6ae14f1b5883093c182f12ce1d593988cae499bb4372256b0301c1b00e9e`  
		Last Modified: Thu, 06 Oct 2022 20:15:05 GMT  
		Size: 116.7 MB (116690804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98acc053b219affe2080f6ddfad206474004eda9666c5b092bf9fc90aa31659`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.14` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:92b3b92dc468cfc22704a83368c85d4758c878808548637ad8401f6ba78e5282
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a01742b56399308f70d74c2477c82b5f0562160950db295a6adb0b48e8dadf`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:31:09 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 10 Nov 2022 21:31:12 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 10 Nov 2022 21:31:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 10 Nov 2022 21:31:14 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BONITA_VERSION
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BRANDING_VERSION
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BONITA_SHA256
# Thu, 10 Nov 2022 21:31:15 GMT
ARG BASE_URL
# Thu, 10 Nov 2022 21:31:15 GMT
ARG BONITA_URL
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 10 Nov 2022 21:31:15 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 10 Nov 2022 21:31:16 GMT
RUN mkdir /opt/files
# Thu, 10 Nov 2022 21:31:16 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 10 Nov 2022 21:31:24 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API_PASSWORD=
# Thu, 10 Nov 2022 21:31:25 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 10 Nov 2022 21:31:25 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 10 Nov 2022 21:31:25 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 10 Nov 2022 21:31:26 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 10 Nov 2022 21:31:26 GMT
EXPOSE 8080 9000
# Thu, 10 Nov 2022 21:31:26 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 10 Nov 2022 21:31:26 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a3ecf9c0764240ea4a002e97a93756470158670ab2d476271c5dff63411aba`  
		Last Modified: Thu, 10 Nov 2022 21:32:24 GMT  
		Size: 56.8 MB (56758527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6a3561b22a1c5d6d0052ed6e609a9b4f439038a3c9316e4a18d113bccb1cbb`  
		Last Modified: Thu, 10 Nov 2022 21:32:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3521a1d72476ad9583383dfcada876476cbebf359be2854f3719b473260f64`  
		Last Modified: Thu, 10 Nov 2022 21:32:11 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ecdb4041b3ae0840a5435e5c6d2ae2cf6a480e838b043cd029bc990ebfbbb2`  
		Last Modified: Thu, 10 Nov 2022 21:32:21 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2977a32ef333556aa544c36b6595d83f2cf92d76f429a58780b327eac6de9aca`  
		Last Modified: Thu, 10 Nov 2022 21:32:12 GMT  
		Size: 3.0 KB (3036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411efc41606a6fed8126df1e7a47259412bf23cca1aad6619f8bde287a1e2a81`  
		Last Modified: Thu, 10 Nov 2022 21:32:16 GMT  
		Size: 116.7 MB (116690815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a2c6540a466d20ce7e64cbabe62163e54d535f2a5f75f8b7dfaae489c50e8e`  
		Last Modified: Thu, 10 Nov 2022 21:32:11 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.14` - linux; ppc64le

```console
$ docker pull bonita@sha256:ed30ab3ec5061aff1dc71c87ce3b52a60cc3aacc160f8dcfd7692cf5f1c91383
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176142311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9e92713926d622cf557e08cf608df8445515cc2805d567604854576eabb7a1`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Tue, 09 Aug 2022 17:17:20 GMT
ADD file:be31abb0aba89ed5ff9200736a1c46091abc3845d0e332efd5e5c874ef2c99d1 in / 
# Tue, 09 Aug 2022 17:17:21 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 19:56:39 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 06 Oct 2022 19:56:48 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 06 Oct 2022 19:56:51 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 06 Oct 2022 19:56:52 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BONITA_VERSION
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BRANDING_VERSION
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BONITA_SHA256
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BASE_URL
# Thu, 06 Oct 2022 19:56:54 GMT
ARG BONITA_URL
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 06 Oct 2022 19:56:55 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 19:56:55 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 06 Oct 2022 19:56:55 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 19:56:56 GMT
RUN mkdir /opt/files
# Thu, 06 Oct 2022 19:56:57 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 06 Oct 2022 19:57:09 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 06 Oct 2022 19:57:11 GMT
ENV HTTP_API=false
# Thu, 06 Oct 2022 19:57:11 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 06 Oct 2022 19:57:12 GMT
ENV HTTP_API_PASSWORD=
# Thu, 06 Oct 2022 19:57:12 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 06 Oct 2022 19:57:12 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 06 Oct 2022 19:57:13 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 06 Oct 2022 19:57:13 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 06 Oct 2022 19:57:13 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 06 Oct 2022 19:57:15 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 06 Oct 2022 19:57:15 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 06 Oct 2022 19:57:15 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 06 Oct 2022 19:57:15 GMT
EXPOSE 8080 9000
# Thu, 06 Oct 2022 19:57:16 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 06 Oct 2022 19:57:16 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:deb7065b3304c3a9834f31b8a53e8d6089060e9c6522668abd22f1f4d9f52ca7`  
		Last Modified: Tue, 09 Aug 2022 17:18:45 GMT  
		Size: 2.8 MB (2812989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef077ba375222dadf88017804c6db49ec3e6c7c7dda2b13cfe326acb96e5573`  
		Last Modified: Thu, 06 Oct 2022 19:58:18 GMT  
		Size: 56.6 MB (56628443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9b2a0c46e4583581aea4b26d7e4888620778734b640fde9a243c60896a85c`  
		Last Modified: Thu, 06 Oct 2022 19:58:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d02cbac52ba92d847db176427502c97ac8cfce0205b8df2e17984291749fb48`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d063ca3ad4a351f1d87243e8704f415833c9636631b3c787fdabc5893e198`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8ea1f55b182c3f8c835160384e887986ba36466e0bc71aa145f0065f4198f0`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 3.0 KB (3032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679dc7c2196ec38ed7be31a96dd4f6c81db83b6e9a8bc4efd5f2edd63c8b4fbc`  
		Last Modified: Thu, 06 Oct 2022 19:58:14 GMT  
		Size: 116.7 MB (116690860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00f2bd54e8ef56344883e905c4ee8e2f08246937858fd47004be957103b17bb`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.14.0`

```console
$ docker pull bonita@sha256:0f038ccdde32fa4b90a855ec5bb41db8434cfbe432cecbcde8abd01c88b0ad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.14.0` - linux; amd64

```console
$ docker pull bonita@sha256:862fefb5c63bd62f0d955db355c2f3f4f22e193522753d8eedc527cd683c6d9e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180333199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bff25d56fe4420a99127f674a2df8588fc8fdf9319915429e3416e6f76dc008`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:14:09 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 06 Oct 2022 20:14:13 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 06 Oct 2022 20:14:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 06 Oct 2022 20:14:14 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 06 Oct 2022 20:14:14 GMT
ARG BONITA_VERSION
# Thu, 06 Oct 2022 20:14:14 GMT
ARG BRANDING_VERSION
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BONITA_SHA256
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BASE_URL
# Thu, 06 Oct 2022 20:14:15 GMT
ARG BONITA_URL
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 06 Oct 2022 20:14:15 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 06 Oct 2022 20:14:15 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 20:14:16 GMT
RUN mkdir /opt/files
# Thu, 06 Oct 2022 20:14:16 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 06 Oct 2022 20:14:30 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 06 Oct 2022 20:14:31 GMT
ENV HTTP_API_PASSWORD=
# Thu, 06 Oct 2022 20:14:31 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 06 Oct 2022 20:14:31 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 06 Oct 2022 20:14:31 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 06 Oct 2022 20:14:31 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 06 Oct 2022 20:14:32 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 06 Oct 2022 20:14:32 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 06 Oct 2022 20:14:32 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 06 Oct 2022 20:14:32 GMT
EXPOSE 8080 9000
# Thu, 06 Oct 2022 20:14:32 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 06 Oct 2022 20:14:32 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede2860654ad6d68046410f9ebec3dd9b9dca61c6fd599f0045a6f5741bf9d6`  
		Last Modified: Thu, 06 Oct 2022 20:15:08 GMT  
		Size: 60.8 MB (60808866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce69fcdc27b67a89739ff4629aa93b1c46f792c65d81f096c0f8a7d81a47728`  
		Last Modified: Thu, 06 Oct 2022 20:15:00 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af59dcbbf223b0ac4dc3fd0d01996906c078459ddaae9684440c4cea484b89c`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2805f0e33650a409f35745444bc7f23d5e82f697438025abb67df81ec03caf4`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173969905ee8acb031228953620f4d6f959d48886d22214974e9764c2d27e28a`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 3.0 KB (3031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afce6ae14f1b5883093c182f12ce1d593988cae499bb4372256b0301c1b00e9e`  
		Last Modified: Thu, 06 Oct 2022 20:15:05 GMT  
		Size: 116.7 MB (116690804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98acc053b219affe2080f6ddfad206474004eda9666c5b092bf9fc90aa31659`  
		Last Modified: Thu, 06 Oct 2022 20:14:58 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.14.0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:92b3b92dc468cfc22704a83368c85d4758c878808548637ad8401f6ba78e5282
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a01742b56399308f70d74c2477c82b5f0562160950db295a6adb0b48e8dadf`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:31:09 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 10 Nov 2022 21:31:12 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 10 Nov 2022 21:31:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 10 Nov 2022 21:31:14 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BONITA_VERSION
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BRANDING_VERSION
# Thu, 10 Nov 2022 21:31:14 GMT
ARG BONITA_SHA256
# Thu, 10 Nov 2022 21:31:15 GMT
ARG BASE_URL
# Thu, 10 Nov 2022 21:31:15 GMT
ARG BONITA_URL
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 10 Nov 2022 21:31:15 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 10 Nov 2022 21:31:15 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 10 Nov 2022 21:31:16 GMT
RUN mkdir /opt/files
# Thu, 10 Nov 2022 21:31:16 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 10 Nov 2022 21:31:24 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_API_PASSWORD=
# Thu, 10 Nov 2022 21:31:25 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 10 Nov 2022 21:31:25 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 10 Nov 2022 21:31:25 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 10 Nov 2022 21:31:25 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 10 Nov 2022 21:31:25 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 10 Nov 2022 21:31:26 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 10 Nov 2022 21:31:26 GMT
EXPOSE 8080 9000
# Thu, 10 Nov 2022 21:31:26 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 10 Nov 2022 21:31:26 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a3ecf9c0764240ea4a002e97a93756470158670ab2d476271c5dff63411aba`  
		Last Modified: Thu, 10 Nov 2022 21:32:24 GMT  
		Size: 56.8 MB (56758527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6a3561b22a1c5d6d0052ed6e609a9b4f439038a3c9316e4a18d113bccb1cbb`  
		Last Modified: Thu, 10 Nov 2022 21:32:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3521a1d72476ad9583383dfcada876476cbebf359be2854f3719b473260f64`  
		Last Modified: Thu, 10 Nov 2022 21:32:11 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ecdb4041b3ae0840a5435e5c6d2ae2cf6a480e838b043cd029bc990ebfbbb2`  
		Last Modified: Thu, 10 Nov 2022 21:32:21 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2977a32ef333556aa544c36b6595d83f2cf92d76f429a58780b327eac6de9aca`  
		Last Modified: Thu, 10 Nov 2022 21:32:12 GMT  
		Size: 3.0 KB (3036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411efc41606a6fed8126df1e7a47259412bf23cca1aad6619f8bde287a1e2a81`  
		Last Modified: Thu, 10 Nov 2022 21:32:16 GMT  
		Size: 116.7 MB (116690815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a2c6540a466d20ce7e64cbabe62163e54d535f2a5f75f8b7dfaae489c50e8e`  
		Last Modified: Thu, 10 Nov 2022 21:32:11 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.14.0` - linux; ppc64le

```console
$ docker pull bonita@sha256:ed30ab3ec5061aff1dc71c87ce3b52a60cc3aacc160f8dcfd7692cf5f1c91383
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176142311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9e92713926d622cf557e08cf608df8445515cc2805d567604854576eabb7a1`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Tue, 09 Aug 2022 17:17:20 GMT
ADD file:be31abb0aba89ed5ff9200736a1c46091abc3845d0e332efd5e5c874ef2c99d1 in / 
# Tue, 09 Aug 2022 17:17:21 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 19:56:39 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Thu, 06 Oct 2022 19:56:48 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre-headless
# Thu, 06 Oct 2022 19:56:51 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 06 Oct 2022 19:56:52 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BONITA_VERSION
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BRANDING_VERSION
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BONITA_SHA256
# Thu, 06 Oct 2022 19:56:53 GMT
ARG BASE_URL
# Thu, 06 Oct 2022 19:56:54 GMT
ARG BONITA_URL
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BONITA_VERSION=7.14.0
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BRANDING_VERSION=2022.1-u0
# Thu, 06 Oct 2022 19:56:54 GMT
ENV BONITA_SHA256=a88b3f4368bd68dda4eccf4680a71b7e523678811b6b3bcd61cd85e67e9b9aeb
# Thu, 06 Oct 2022 19:56:55 GMT
ENV ZIP_FILE=BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 19:56:55 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Thu, 06 Oct 2022 19:56:55 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.1-u0/BonitaCommunity-2022.1-u0.zip
# Thu, 06 Oct 2022 19:56:56 GMT
RUN mkdir /opt/files
# Thu, 06 Oct 2022 19:56:57 GMT
COPY dir:55abb36f42ed7e3d3197415cf20ab2abe54eeefc3accbc7bc3be8dbd2d0f8d41 in /opt/files 
# Thu, 06 Oct 2022 19:57:09 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Thu, 06 Oct 2022 19:57:11 GMT
ENV HTTP_API=false
# Thu, 06 Oct 2022 19:57:11 GMT
ENV HTTP_API_USERNAME=http-api
# Thu, 06 Oct 2022 19:57:12 GMT
ENV HTTP_API_PASSWORD=
# Thu, 06 Oct 2022 19:57:12 GMT
ENV MONITORING_USERNAME=monitoring
# Thu, 06 Oct 2022 19:57:12 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Thu, 06 Oct 2022 19:57:13 GMT
ENV JMX_REMOTE_ACCESS=false
# Thu, 06 Oct 2022 19:57:13 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Thu, 06 Oct 2022 19:57:13 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Thu, 06 Oct 2022 19:57:14 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Thu, 06 Oct 2022 19:57:15 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Thu, 06 Oct 2022 19:57:15 GMT
ENV HTTP_MAX_THREADS=20
# Thu, 06 Oct 2022 19:57:15 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Thu, 06 Oct 2022 19:57:15 GMT
EXPOSE 8080 9000
# Thu, 06 Oct 2022 19:57:16 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Thu, 06 Oct 2022 19:57:16 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:deb7065b3304c3a9834f31b8a53e8d6089060e9c6522668abd22f1f4d9f52ca7`  
		Last Modified: Tue, 09 Aug 2022 17:18:45 GMT  
		Size: 2.8 MB (2812989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef077ba375222dadf88017804c6db49ec3e6c7c7dda2b13cfe326acb96e5573`  
		Last Modified: Thu, 06 Oct 2022 19:58:18 GMT  
		Size: 56.6 MB (56628443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9b2a0c46e4583581aea4b26d7e4888620778734b640fde9a243c60896a85c`  
		Last Modified: Thu, 06 Oct 2022 19:58:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d02cbac52ba92d847db176427502c97ac8cfce0205b8df2e17984291749fb48`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d063ca3ad4a351f1d87243e8704f415833c9636631b3c787fdabc5893e198`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8ea1f55b182c3f8c835160384e887986ba36466e0bc71aa145f0065f4198f0`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 3.0 KB (3032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679dc7c2196ec38ed7be31a96dd4f6c81db83b6e9a8bc4efd5f2edd63c8b4fbc`  
		Last Modified: Thu, 06 Oct 2022 19:58:14 GMT  
		Size: 116.7 MB (116690860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00f2bd54e8ef56344883e905c4ee8e2f08246937858fd47004be957103b17bb`  
		Last Modified: Thu, 06 Oct 2022 19:58:03 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.15`

```console
$ docker pull bonita@sha256:ab6c74c8f8157a5fca98141a6137586c41362da4a2e35a1a7b8e27aeb3d59a9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.15` - linux; amd64

```console
$ docker pull bonita@sha256:af0b3309cef222dc7bb8eea0171365ce7c1f04c653ce1fcb88946269cbdaa1bb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183358999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9109ad12339446e49ea0fe59899c0fbc099861b68ba6dfff446717483f9db272`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:10:33 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 05:10:37 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 05:10:38 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 05:10:39 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 05:10:40 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 05:10:41 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 05:10:49 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 05:10:50 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 05:10:51 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 05:10:51 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 05:10:51 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 05:10:51 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 05:10:51 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f44ece23391fa62ec0b54a5223b0e83bf3afdf487aac2e8bcf40fceafe3c7f9`  
		Last Modified: Sat, 12 Nov 2022 05:11:27 GMT  
		Size: 61.3 MB (61349663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2f737142fcee545435fb87aad8ba19c0c5161b2123af22ed53f23cbbe74a40`  
		Last Modified: Sat, 12 Nov 2022 05:11:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b03e552725b71e9a3c2d21554036dbc8c8f37d789460fb85a83a2caf824e0a8`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8381b9f3f89adb3f9b9d686274b546978dcc1f8be9c09645ca12db9a3c0fa144`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e828375313adaa2ecd577320401dd912202ef128213370630fa123ddf458322`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cbec32dd5245f88019c4158f869ef58fdc51e7151d35b1adbcbb4d987469d0`  
		Last Modified: Sat, 12 Nov 2022 05:11:23 GMT  
		Size: 119.2 MB (119193030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ac6aa1740a5547ebbd19730284cda96651ea618939ce1a72b2db0103764307`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.15` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:bde00eff2d5e13f1c0f5a0f252e7c53e25c810d4451913d76329abfd16f89f88
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182510902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afb8eb0b9144f3d0cdcba7e22c5cad653298929ff2c0800dee8831210724443`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:12:26 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:12:30 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:12:31 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:12:32 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:12:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:33 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:12:33 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:12:41 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:12:43 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:12:43 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:12:43 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:12:43 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:12:43 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:12:43 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce4c0a72e6d1f312d742245a673d03cf1c1a40071986286029e0a00a67480f`  
		Last Modified: Sat, 12 Nov 2022 04:13:20 GMT  
		Size: 60.6 MB (60600121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caf2b4f26366c9aae2cf0ff0f36b0ac4bf366208f938eeeab3b21f32657639c`  
		Last Modified: Sat, 12 Nov 2022 04:13:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835deb94e6aaa2b983a18fb02dd0f8170a3e79b46ce9d67fe76b9390ccf1a12`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c66d5ecba2c4fc8f635b2b2e3954ef6e3f2a3c9e881e00c59b35ed8f0e7c7b3`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dab80d34b1704dded6340f627700423b28bf8257b13c50a5812a341a71de0c`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 3.0 KB (3044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ab7f4c30d1b1e3a2e766637f44f630946117f6aa4b404086c57031afef18d2`  
		Last Modified: Sat, 12 Nov 2022 04:13:15 GMT  
		Size: 119.2 MB (119192997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60912611891a306ce975f3597861cc95698c4f4831b69483b30193d2fbfe64d4`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.15` - linux; ppc64le

```console
$ docker pull bonita@sha256:bc646851cea3a34aaeab8a829e05dec0b922b6c5e8f164f1a5388a6c04c5efa3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179512965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c6f360acaa7279b69d25d1ad4db629ebbbcbc5e6745a637f19029edd7bf16`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:33:08 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:33:24 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:33:27 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:33:28 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:33:28 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:33:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:34 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:33:34 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:33:52 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:33:54 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:33:55 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:33:55 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:33:58 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:33:58 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:33:58 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:33:58 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:33:59 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59594f530089b9a64ebc37b50c12ff83c1569c34d1d31a8d9f8eafd01bc0d8`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 57.5 MB (57508396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dfbbf9fbe77af1267d6ef466813e355c78a4b827f69744a76a1178c1165a9c`  
		Last Modified: Sat, 12 Nov 2022 04:34:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba451e84465bdf445877d0098a73aa0811961f2d4d03eb32f40162e5aeeba26f`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88b20935842b33aa0fadf0982a1cc1a4522a21dcc3d7d0062187c68adece9fd`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540c740bc35002c6104e6212b741283455567c9395bbb50870b249cec397295`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717fd7aec4ecaedcffa16c8c06fcfc48e41141994da313ea21f63164fa3d8692`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 119.2 MB (119192984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7709ea2302b6abbd61cdf354155d561cec710e2f3db1efb45fe3bb7803466be8`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.15.0`

```console
$ docker pull bonita@sha256:ab6c74c8f8157a5fca98141a6137586c41362da4a2e35a1a7b8e27aeb3d59a9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.15.0` - linux; amd64

```console
$ docker pull bonita@sha256:af0b3309cef222dc7bb8eea0171365ce7c1f04c653ce1fcb88946269cbdaa1bb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183358999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9109ad12339446e49ea0fe59899c0fbc099861b68ba6dfff446717483f9db272`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:10:33 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 05:10:37 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 05:10:38 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 05:10:39 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 05:10:40 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 05:10:41 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 05:10:49 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 05:10:50 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 05:10:51 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 05:10:51 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 05:10:51 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 05:10:51 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 05:10:51 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f44ece23391fa62ec0b54a5223b0e83bf3afdf487aac2e8bcf40fceafe3c7f9`  
		Last Modified: Sat, 12 Nov 2022 05:11:27 GMT  
		Size: 61.3 MB (61349663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2f737142fcee545435fb87aad8ba19c0c5161b2123af22ed53f23cbbe74a40`  
		Last Modified: Sat, 12 Nov 2022 05:11:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b03e552725b71e9a3c2d21554036dbc8c8f37d789460fb85a83a2caf824e0a8`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8381b9f3f89adb3f9b9d686274b546978dcc1f8be9c09645ca12db9a3c0fa144`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e828375313adaa2ecd577320401dd912202ef128213370630fa123ddf458322`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cbec32dd5245f88019c4158f869ef58fdc51e7151d35b1adbcbb4d987469d0`  
		Last Modified: Sat, 12 Nov 2022 05:11:23 GMT  
		Size: 119.2 MB (119193030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ac6aa1740a5547ebbd19730284cda96651ea618939ce1a72b2db0103764307`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.15.0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:bde00eff2d5e13f1c0f5a0f252e7c53e25c810d4451913d76329abfd16f89f88
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182510902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afb8eb0b9144f3d0cdcba7e22c5cad653298929ff2c0800dee8831210724443`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:12:26 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:12:30 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:12:31 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:12:32 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:12:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:33 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:12:33 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:12:41 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:12:43 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:12:43 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:12:43 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:12:43 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:12:43 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:12:43 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce4c0a72e6d1f312d742245a673d03cf1c1a40071986286029e0a00a67480f`  
		Last Modified: Sat, 12 Nov 2022 04:13:20 GMT  
		Size: 60.6 MB (60600121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caf2b4f26366c9aae2cf0ff0f36b0ac4bf366208f938eeeab3b21f32657639c`  
		Last Modified: Sat, 12 Nov 2022 04:13:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835deb94e6aaa2b983a18fb02dd0f8170a3e79b46ce9d67fe76b9390ccf1a12`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c66d5ecba2c4fc8f635b2b2e3954ef6e3f2a3c9e881e00c59b35ed8f0e7c7b3`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dab80d34b1704dded6340f627700423b28bf8257b13c50a5812a341a71de0c`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 3.0 KB (3044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ab7f4c30d1b1e3a2e766637f44f630946117f6aa4b404086c57031afef18d2`  
		Last Modified: Sat, 12 Nov 2022 04:13:15 GMT  
		Size: 119.2 MB (119192997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60912611891a306ce975f3597861cc95698c4f4831b69483b30193d2fbfe64d4`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.15.0` - linux; ppc64le

```console
$ docker pull bonita@sha256:bc646851cea3a34aaeab8a829e05dec0b922b6c5e8f164f1a5388a6c04c5efa3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179512965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c6f360acaa7279b69d25d1ad4db629ebbbcbc5e6745a637f19029edd7bf16`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:33:08 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:33:24 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:33:27 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:33:28 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:33:28 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:33:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:34 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:33:34 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:33:52 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:33:54 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:33:55 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:33:55 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:33:58 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:33:58 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:33:58 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:33:58 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:33:59 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59594f530089b9a64ebc37b50c12ff83c1569c34d1d31a8d9f8eafd01bc0d8`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 57.5 MB (57508396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dfbbf9fbe77af1267d6ef466813e355c78a4b827f69744a76a1178c1165a9c`  
		Last Modified: Sat, 12 Nov 2022 04:34:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba451e84465bdf445877d0098a73aa0811961f2d4d03eb32f40162e5aeeba26f`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88b20935842b33aa0fadf0982a1cc1a4522a21dcc3d7d0062187c68adece9fd`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540c740bc35002c6104e6212b741283455567c9395bbb50870b249cec397295`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717fd7aec4ecaedcffa16c8c06fcfc48e41141994da313ea21f63164fa3d8692`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 119.2 MB (119192984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7709ea2302b6abbd61cdf354155d561cec710e2f3db1efb45fe3bb7803466be8`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:ab6c74c8f8157a5fca98141a6137586c41362da4a2e35a1a7b8e27aeb3d59a9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:af0b3309cef222dc7bb8eea0171365ce7c1f04c653ce1fcb88946269cbdaa1bb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183358999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9109ad12339446e49ea0fe59899c0fbc099861b68ba6dfff446717483f9db272`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 05:10:33 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 05:10:37 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 05:10:38 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 05:10:39 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 05:10:39 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 05:10:40 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 05:10:40 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 05:10:40 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 05:10:41 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 05:10:49 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 05:10:50 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 05:10:50 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 05:10:50 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 05:10:50 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 05:10:51 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 05:10:51 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 05:10:51 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 05:10:51 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 05:10:51 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 05:10:51 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f44ece23391fa62ec0b54a5223b0e83bf3afdf487aac2e8bcf40fceafe3c7f9`  
		Last Modified: Sat, 12 Nov 2022 05:11:27 GMT  
		Size: 61.3 MB (61349663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2f737142fcee545435fb87aad8ba19c0c5161b2123af22ed53f23cbbe74a40`  
		Last Modified: Sat, 12 Nov 2022 05:11:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b03e552725b71e9a3c2d21554036dbc8c8f37d789460fb85a83a2caf824e0a8`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8381b9f3f89adb3f9b9d686274b546978dcc1f8be9c09645ca12db9a3c0fa144`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e828375313adaa2ecd577320401dd912202ef128213370630fa123ddf458322`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cbec32dd5245f88019c4158f869ef58fdc51e7151d35b1adbcbb4d987469d0`  
		Last Modified: Sat, 12 Nov 2022 05:11:23 GMT  
		Size: 119.2 MB (119193030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ac6aa1740a5547ebbd19730284cda96651ea618939ce1a72b2db0103764307`  
		Last Modified: Sat, 12 Nov 2022 05:11:16 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:bde00eff2d5e13f1c0f5a0f252e7c53e25c810d4451913d76329abfd16f89f88
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182510902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afb8eb0b9144f3d0cdcba7e22c5cad653298929ff2c0800dee8831210724443`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:12:26 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:12:30 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:12:31 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:12:32 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:12:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:12:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:12:33 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:12:33 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:12:41 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:12:42 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:12:42 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:12:43 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:12:43 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:12:43 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:12:43 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:12:43 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:12:43 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:12:43 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce4c0a72e6d1f312d742245a673d03cf1c1a40071986286029e0a00a67480f`  
		Last Modified: Sat, 12 Nov 2022 04:13:20 GMT  
		Size: 60.6 MB (60600121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caf2b4f26366c9aae2cf0ff0f36b0ac4bf366208f938eeeab3b21f32657639c`  
		Last Modified: Sat, 12 Nov 2022 04:13:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8835deb94e6aaa2b983a18fb02dd0f8170a3e79b46ce9d67fe76b9390ccf1a12`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c66d5ecba2c4fc8f635b2b2e3954ef6e3f2a3c9e881e00c59b35ed8f0e7c7b3`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dab80d34b1704dded6340f627700423b28bf8257b13c50a5812a341a71de0c`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 3.0 KB (3044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ab7f4c30d1b1e3a2e766637f44f630946117f6aa4b404086c57031afef18d2`  
		Last Modified: Sat, 12 Nov 2022 04:13:15 GMT  
		Size: 119.2 MB (119192997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60912611891a306ce975f3597861cc95698c4f4831b69483b30193d2fbfe64d4`  
		Last Modified: Sat, 12 Nov 2022 04:13:10 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:bc646851cea3a34aaeab8a829e05dec0b922b6c5e8f164f1a5388a6c04c5efa3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179512965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c6f360acaa7279b69d25d1ad4db629ebbbcbc5e6745a637f19029edd7bf16`
-	Entrypoint: `["\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 04:33:08 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Sat, 12 Nov 2022 04:33:24 GMT
RUN apk add --no-cache curl unzip bash su-exec jattach openjdk11-jre
# Sat, 12 Nov 2022 04:33:27 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 12 Nov 2022 04:33:28 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S  -G bonita -h /opt/bonita/ -s /sbin/nologin  bonita
# Sat, 12 Nov 2022 04:33:28 GMT
ARG BONITA_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BRANDING_VERSION
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BONITA_SHA256
# Sat, 12 Nov 2022 04:33:29 GMT
ARG BASE_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ARG BONITA_URL
# Sat, 12 Nov 2022 04:33:30 GMT
ENV BONITA_VERSION=7.15.0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BRANDING_VERSION=2022.2-u0
# Sat, 12 Nov 2022 04:33:31 GMT
ENV BONITA_SHA256=9e6d35b3763ccc091b4b4dec1697c96231552847d4329420e796727c946e37a6
# Sat, 12 Nov 2022 04:33:32 GMT
ENV ZIP_FILE=BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BASE_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download
# Sat, 12 Nov 2022 04:33:32 GMT
ENV BONITA_URL=https://github.com/bonitasoft/bonita-platform-releases/releases/download/2022.2-u0/BonitaCommunity-2022.2-u0.zip
# Sat, 12 Nov 2022 04:33:34 GMT
RUN mkdir /opt/files
# Sat, 12 Nov 2022 04:33:34 GMT
COPY dir:2f998cb77cda0ed47e4d103dacbc15e680f0e173a75b624320e21173de664a22 in /opt/files 
# Sat, 12 Nov 2022 04:33:52 GMT
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then echo "File already present in /opt/files"; else curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c - ; fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && unzip /opt/bonita/server/webapps/bonita.war -d /opt/bonita/server/webapps/bonita/   && rm /opt/bonita/server/webapps/bonita.war   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API=false
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_USERNAME=http-api
# Sat, 12 Nov 2022 04:33:54 GMT
ENV HTTP_API_PASSWORD=
# Sat, 12 Nov 2022 04:33:54 GMT
ENV MONITORING_USERNAME=monitoring
# Sat, 12 Nov 2022 04:33:55 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Sat, 12 Nov 2022 04:33:55 GMT
ENV JMX_REMOTE_ACCESS=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Sat, 12 Nov 2022 04:33:56 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Sat, 12 Nov 2022 04:33:57 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Sat, 12 Nov 2022 04:33:58 GMT
ENV HTTP_MAX_THREADS=20
# Sat, 12 Nov 2022 04:33:58 GMT
COPY dir:ad0fdf5900d3b914efcbba3170cc7d773b5d57072eba969a052457514aa27adc in /opt/templates 
# Sat, 12 Nov 2022 04:33:58 GMT
EXPOSE 8080 9000
# Sat, 12 Nov 2022 04:33:58 GMT
ENTRYPOINT ["/opt/files/startup.sh"]
# Sat, 12 Nov 2022 04:33:59 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59594f530089b9a64ebc37b50c12ff83c1569c34d1d31a8d9f8eafd01bc0d8`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 57.5 MB (57508396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dfbbf9fbe77af1267d6ef466813e355c78a4b827f69744a76a1178c1165a9c`  
		Last Modified: Sat, 12 Nov 2022 04:34:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba451e84465bdf445877d0098a73aa0811961f2d4d03eb32f40162e5aeeba26f`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88b20935842b33aa0fadf0982a1cc1a4522a21dcc3d7d0062187c68adece9fd`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540c740bc35002c6104e6212b741283455567c9395bbb50870b249cec397295`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 3.0 KB (3048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717fd7aec4ecaedcffa16c8c06fcfc48e41141994da313ea21f63164fa3d8692`  
		Last Modified: Sat, 12 Nov 2022 04:35:11 GMT  
		Size: 119.2 MB (119192984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7709ea2302b6abbd61cdf354155d561cec710e2f3db1efb45fe3bb7803466be8`  
		Last Modified: Sat, 12 Nov 2022 04:34:55 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
