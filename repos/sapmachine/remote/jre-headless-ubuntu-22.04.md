## `sapmachine:jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:0eaa83237453b3b83a6440ecb097556c128714cf488d1d7395dce36eecb1d9bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:dcbe1c40cfddde9a948f10845552c3b23856e165f462d474ea37405cec39caa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89629967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba6813df7cac670e9112d7ac4acbf2156649a2de92d9df63cb497bf03ac5243`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:23:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:23:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1391bb65d308b7edc3584ce9c0f2b70c175df841cdfb2685ad54aef5abd483c2`  
		Last Modified: Wed, 22 Jul 2026 18:23:38 GMT  
		Size: 59.9 MB (59891086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8cce965d3dcc12eec9f5ed4efa4c86a13e9e49e11662b4047ee6b02437692fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3535ec83e0799955e969ca304ab91372adc57d689494679f418a9e2856cd3751`

```dockerfile
```

-	Layers:
	-	`sha256:34564b5c5b696c026c0e88b5899b8cd7631fb1ff7187ffd11f958a9b24b5a9df`  
		Last Modified: Wed, 22 Jul 2026 18:23:36 GMT  
		Size: 2.3 MB (2299827 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ce7d0568338f8adf7eaf449dc0e8bc36372a9295a62322104c842cc8fa5468a`  
		Last Modified: Wed, 22 Jul 2026 18:23:36 GMT  
		Size: 9.6 KB (9568 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b0b85691e35299c80b130a728e88232e668ba8c0f15f0f7f4d08884bc3d7472e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86472211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b092ee09eedf7aaf9e93e8416502a3b6ff46a252fd21605fa70a05209345e82`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:21:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63aeb69482b102512e8a926fe20ef3f4fc81c8c75800145ee40a25c2f259577e`  
		Last Modified: Wed, 22 Jul 2026 18:21:58 GMT  
		Size: 58.9 MB (58859027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4ce51c92a5556501028e088288948fa08d6b42c75b3977f814d584c3eb34b9a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cdfc49ac121649f2b1f11fb1e6cdeb4f45addee738c329ab50f0888b9be7ea`

```dockerfile
```

-	Layers:
	-	`sha256:8ced8e7166073d7753a160095b59d6c2f70eadc25dafb171ffac5ece1e29f21b`  
		Last Modified: Wed, 22 Jul 2026 18:21:56 GMT  
		Size: 2.3 MB (2299520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a825ea09e0c0f7e5c03b2770f7e872768db30ed1a89218cbcc0d33c0b6e3231`  
		Last Modified: Wed, 22 Jul 2026 18:21:56 GMT  
		Size: 9.7 KB (9696 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5ca4cf7a22b51cf9e9107ed88f827e6ab7d0f676bbfc0a92a45d0edc441b38ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93848126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30186ac2f05c0dceee43c4981baa667b28766f43aa50be90eb79b144a096b51`
-	Default Command: `["bash"]`

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
# Wed, 22 Jul 2026 18:23:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:23:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b5c0dd54e95d17658f62e18046f332b2c6ade0a23de3fa36a4bfb0003285b4`  
		Last Modified: Wed, 22 Jul 2026 18:24:06 GMT  
		Size: 59.2 MB (59206258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d5f2b5bfcdab856d20a6119432d8bb88fbf643515b3c7704056290a2c733436c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834f41410ec8f5c21c1bbaa8636d2929b2da35ceefc8996b5c367c38353786c9`

```dockerfile
```

-	Layers:
	-	`sha256:e590f6aceac38a77c7841594ba79a2298088c0f5757c707f086eda528fdaf7ac`  
		Last Modified: Wed, 22 Jul 2026 18:24:04 GMT  
		Size: 2.3 MB (2298651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b99ff71fec3332dbf0f2d6570873670538ccf0980d5c6452d66d391f2c3de44b`  
		Last Modified: Wed, 22 Jul 2026 18:24:04 GMT  
		Size: 9.6 KB (9624 bytes)  
		MIME: application/vnd.in-toto+json
