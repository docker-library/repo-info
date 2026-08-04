## `sapmachine:17-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:8d5ec06cbcd9813b7d881a48c3a86f93dbcf06ba6159a970d1715f82d118d3cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:c909966117f48a071d2d0d5659ab24d163859e4ccd0760acd4cb42a54cade28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234498190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed61aeb3e9eb90fbd2afb4cdd106cef25a0141da4733b3a8d626319124b1ee75`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:51:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:51:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1079e92f813538c7141c8577f419b72657d90d801849d225ff331ae609ff4a`  
		Last Modified: Tue, 04 Aug 2026 01:51:36 GMT  
		Size: 204.8 MB (204761673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1782cc78b65cbf81d5fda37a26ec09bd7f57dce7f34de05a5ec578e0c834c1da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe23a288c438af4ddc15946699c4e1e5a66e4a3577cef783ed76d21c23242868`

```dockerfile
```

-	Layers:
	-	`sha256:ef7dc3dbd2dadef282ca3106aa29e813c5e39a72fdcbd22c1e4e8f26177d1114`  
		Last Modified: Tue, 04 Aug 2026 01:51:32 GMT  
		Size: 2.6 MB (2631153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5969e06dfaa43ac89343754cdc672492637b8e0e8ed28ff94475557604626e1a`  
		Last Modified: Tue, 04 Aug 2026 01:51:32 GMT  
		Size: 10.1 KB (10095 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:edc39a72565090b1ad4954be7dcd1e553b84acaa4fa3062b34081a13bfdfbd4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231107775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab24a8710ecadad400917afdce9dfafac81a192ab138930488b9cdbb3a5aa6`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:51:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:51:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:51:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1169a629a8b681d0cf1136269c091bcf8f13d40d1600b8cf1a5dba91da19d45`  
		Last Modified: Tue, 04 Aug 2026 01:51:42 GMT  
		Size: 203.5 MB (203487743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1739ac3af2fc78b50c9e8615f19c12c1566a3607a49f4763009578ff00c6696e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e3db5136acf2800c66b2b9eb9924614c7353448f465e86c8f4b6e9c2eb1c3b`

```dockerfile
```

-	Layers:
	-	`sha256:97cb3eab92cd113f18979e7cc193f4cd1dc8a30de4aecfb8ac80853078d7d3ec`  
		Last Modified: Tue, 04 Aug 2026 01:51:38 GMT  
		Size: 2.6 MB (2630883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f280f33269515082eab02fc2f3796a711188b778e031bb1c97bbbdf590f9d2a`  
		Last Modified: Tue, 04 Aug 2026 01:51:37 GMT  
		Size: 10.2 KB (10246 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5d84b29326fc793a1a4986074259de111a4099def9e58e921e92468059b57926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.5 MB (238482787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fc7304602209402af530537534b26a79a490d3f667d4bb0281bb2f0f7d3460`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:42:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:42:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:42:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02fe07d05fb451feeb11272169349ccd9dc75935ace577d3e36b2d119888758`  
		Last Modified: Wed, 22 Jul 2026 18:43:21 GMT  
		Size: 203.8 MB (203840919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d04b95e6de05e348858e1da1ea5285acafe69fde261687a9747d91d1e78c0fca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2638926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946b5a3dccab57ae2ae4b7f311e515996e731ca46526fa8a586634d490b5c9c5`

```dockerfile
```

-	Layers:
	-	`sha256:5ee0396ed2c4f633cae35057af69f68921167d264622bef10ad8374922e87200`  
		Last Modified: Wed, 22 Jul 2026 18:43:16 GMT  
		Size: 2.6 MB (2628763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d2fe5142327699a4718aa8043c215d833a33c6426d703d59abb4b1e84e5fea`  
		Last Modified: Wed, 22 Jul 2026 18:43:16 GMT  
		Size: 10.2 KB (10163 bytes)  
		MIME: application/vnd.in-toto+json
