## `sapmachine:26-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:1985de6c3a0952958f4ade67719c15f2260720fbb8afa2272d0ed178323b3c06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:0944e5ecd5810524ebaabc91c1f566b3c0a675d7bf3ca6fadf398fe1d72f9c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93958733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d68d2c27762d26cd695ed5fbb2d812c517dc0fd06feb94784d5dca78592d074`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270c5307adb9c542d23ac0a7b695646c5ebf35ba20f2d847eacbd39ce85bfa38`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 64.2 MB (64207624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:06f457c28fffc224f7bb27ad59db05ca1863636d141afcbd7906e8b7faa9565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8062f88ac71f53cf4b0ed809075a755d067acb49a5826bdf47c7f69e918dbc`

```dockerfile
```

-	Layers:
	-	`sha256:b6be0b19d6da5c8aea72be20c4668674f592a06b57a9fa256568ca6497a540e2`  
		Last Modified: Tue, 04 Aug 2026 01:48:14 GMT  
		Size: 2.5 MB (2526240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d4782bcdc19205b510175cff8735d728207ec4481ce9261dcce01c3734013b1`  
		Last Modified: Tue, 04 Aug 2026 01:48:14 GMT  
		Size: 11.3 KB (11302 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a0c9ba1f7fe692f7d7a215c9f8ed8a69702ab07d047a59748186be26d96db922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89703059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b4dc043881a289c262dadf048306d724b5790cdba248ad4e5ae0ed78751899`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a61f8a9ded6ef0be0e362036e31a71a96bae7115d299ccaa0e25d4cf98f84fe`  
		Last Modified: Tue, 04 Aug 2026 01:48:29 GMT  
		Size: 60.8 MB (60816241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d55582fc001d600b134e6e7c2fcdde7c589900b59222fec684b1b7d50f175f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a189c65481522edd966351593a5b1005e28bf68f9dd37effcefff66931888c1c`

```dockerfile
```

-	Layers:
	-	`sha256:95988b61a77c2baca68a3364613231cc5f21c864494a65695dfcf05ace729e64`  
		Last Modified: Tue, 04 Aug 2026 01:48:27 GMT  
		Size: 2.5 MB (2526801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e0de5323d772a701c8107aacc2efff7cc35f76226f2b46f1de49b1fa1d9450b`  
		Last Modified: Tue, 04 Aug 2026 01:48:27 GMT  
		Size: 11.5 KB (11503 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d1a261134f2f4d41790a6a0e3917acd07eebea18109bd163483b15381c276d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95728314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a82bbfabc30e0366292dd9beb8119a1bd5f750d32e2e0637ecc20aa79cbb4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:20:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:20:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:20:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4c065bbaceeb986155f598e3d18d8b913695122e40122a150f10f61a3f194d`  
		Last Modified: Wed, 22 Jul 2026 18:20:59 GMT  
		Size: 61.4 MB (61414838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1817f01b259200941779d01a9946add1950c7ae4770b02c69cf0bf91573af6d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0fa52b8e91f10187b3e52d74bcc83f70eba630d2bbb647a007ba4a40a7cc79`

```dockerfile
```

-	Layers:
	-	`sha256:5e7e09ce7e528e19958e81d6fbb509b065bb8717054bac0f7b72a0b3d019dbde`  
		Last Modified: Wed, 22 Jul 2026 18:20:58 GMT  
		Size: 2.5 MB (2525106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b43eb6351a209a2ae7fc3f167c2b5faa37b2e2ce58eb4448b8bb920716097ddc`  
		Last Modified: Wed, 22 Jul 2026 18:20:57 GMT  
		Size: 11.4 KB (11395 bytes)  
		MIME: application/vnd.in-toto+json
