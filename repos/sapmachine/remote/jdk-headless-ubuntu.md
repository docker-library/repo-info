## `sapmachine:jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:11dee0cf2d10144bacf6a3ea61aedc9cba266e6b9059369ba188e5c9784a04b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:0a31215b9a9cc860016e4e3af5b3ef38d607f165d02644f886fb811944f80e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167858717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4c483fb82af573aa4d1c2beddf407e228a0df27a4f0db3429357438b2cb9b4`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:35:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:35:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:35:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:decaf520e2b7fb5e658fb69c631a5e909a337780d0e69cccdab029a82a3c621f`  
		Last Modified: Wed, 16 Sep 2026 16:36:15 GMT  
		Size: 138.1 MB (138094601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f92fc9b5b24a734a11178a40c190a70c23edbe5dadee598c64a5bc1bac66181a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e0921e9b24c97e88809c1c1bdeba71e962db4d71d77cfaf9dd923a618881d6`

```dockerfile
```

-	Layers:
	-	`sha256:23a1978afb5f377c852c365a743ac7f010145a73eb67ec366bbc380fa1e3a815`  
		Last Modified: Wed, 16 Sep 2026 16:36:11 GMT  
		Size: 2.3 MB (2299851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6462a8421737e40b15de809879b83a18644fdbd16e0ee49198909fba5205ffb7`  
		Last Modified: Wed, 16 Sep 2026 16:36:11 GMT  
		Size: 10.9 KB (10890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a827c69606fd06b8243501da7e34941a65c4a8ba16061b86039a66c55a130d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166101411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a63137808b4866b6b1f83adcccfdcb9f5b5eab302dc56f7fb660ff2accf6dd`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:36:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4635e522b82b464409f766fc7e539fb5a91a7c1c120b7bb8ffdc6985e20c51ce`  
		Last Modified: Wed, 16 Sep 2026 16:36:50 GMT  
		Size: 137.2 MB (137159831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:68422553313de2d1b19ff0887fdfec01488eef4868130b40d0a32ce4b3b8c228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105c4aefcb94715787a5d440131fe813cdd055ef1555f1eb1e36e4edf2507f82`

```dockerfile
```

-	Layers:
	-	`sha256:8944245f216334d162777baef5ce845437d29e9a24521625f1eeffc72420468e`  
		Last Modified: Wed, 16 Sep 2026 16:36:47 GMT  
		Size: 2.3 MB (2300355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82f8ef4b1b1eb13137b908e70acccbd75f2c2ec7892623133e79c1629436c389`  
		Last Modified: Wed, 16 Sep 2026 16:36:46 GMT  
		Size: 11.0 KB (11043 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:01e5a34b6dd02ca3d6052a235ec2fb2cbfb830abcf35cec190fbd16984c1bfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171535642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae7f3a10c0fa6ff18a84c067732cd6f66eaeb778bf2b780f01ba1df318e19f9`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:38:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:38:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:38:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69527d097a98635e8c1f470b23dbde96f711606babcd64116b00bdeaec08afc4`  
		Last Modified: Wed, 16 Sep 2026 16:39:08 GMT  
		Size: 137.2 MB (137158684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b22234e9cf43792ba7ca970e0eed67438d495c8d0cf158f1e5ba30ffdc16225d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e4da07bbf19d547ea2fbe9e2d465e506fe7d9f803fe6c855c8f66d75dc7b21`

```dockerfile
```

-	Layers:
	-	`sha256:c98dde9d5743e0675733579e776fd9780ad2e64e2185a07ca0f92b88ce77732a`  
		Last Modified: Wed, 16 Sep 2026 16:39:05 GMT  
		Size: 2.3 MB (2298638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0678d5441a9b28882581b2b32c5dd4a051108faf1563fbccc46558a2006e9ac5`  
		Last Modified: Wed, 16 Sep 2026 16:39:05 GMT  
		Size: 11.0 KB (10959 bytes)  
		MIME: application/vnd.in-toto+json
