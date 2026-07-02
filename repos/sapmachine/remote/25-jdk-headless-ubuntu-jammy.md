## `sapmachine:25-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:e2a1603fd409210f0fce99529a8e5a31e305c364e95e8f72abdbb2f093d7c162
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:e9f0c26fbd914a149052bc76acd3be276bc44057cbe0e072366534fb1aaac117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250306702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32562e9ba14fb355e7cbb231ea93c352f765ac1520827591088835300fc27868`
-	Default Command: `["jshell"]`

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
# Thu, 02 Jul 2026 02:37:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:37:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e92458b73193a1322fff85aba07c9e32f97b73f27dd77304c383e12d65dbc1`  
		Last Modified: Thu, 02 Jul 2026 02:37:39 GMT  
		Size: 220.6 MB (220567821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bcca9d6a58e5dc1beb08cf005ce89bc2b7e2a6d9b9bfc6b4e191bb6c649cd69a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2380429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aebf05d475495a42325e2aadd5c14ac85fb4fa80c8519ae27b5d260eb092afd`

```dockerfile
```

-	Layers:
	-	`sha256:f7fe38b6492c8e65bd0542eabc0a86896b7bcaaacf22f045584047db34cb42b4`  
		Last Modified: Thu, 02 Jul 2026 02:37:34 GMT  
		Size: 2.4 MB (2370844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69014cc30c066453c018ffba0b5ecb359264b3bc71209ec4d9ad7a4e9d664d8f`  
		Last Modified: Thu, 02 Jul 2026 02:37:34 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e7170e56b422b2ca3b6f579b7626b0feeda9c07d453092d6cbeaede38929f838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245952451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d86c7b4ec5ebeddb47d05bf8d110f6af8be1109fecb4db4c244d817ae94258`
-	Default Command: `["jshell"]`

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
# Thu, 02 Jul 2026 02:36:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:36:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c7181aafba599997147a451c0ec7b2e09264aea34ba86db2f138020354184d`  
		Last Modified: Thu, 02 Jul 2026 02:36:56 GMT  
		Size: 218.3 MB (218339267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ae25e040626917dee4cbd95bad660ff62e96c65867c5e65c2328a1ac74b381e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2380250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42126033d32f338b88a469cb7d40c60436108b209c7ba5387e5f6db975cc8dcf`

```dockerfile
```

-	Layers:
	-	`sha256:eec3d951173c00d875ad367076e61a53d91486af1a40956d01fddc3e8934e5d8`  
		Last Modified: Thu, 02 Jul 2026 02:36:51 GMT  
		Size: 2.4 MB (2370537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1682e1693f3b2d23cfd478db09454683c4711629e87fb0027c5811a73ed8b7ba`  
		Last Modified: Thu, 02 Jul 2026 02:36:52 GMT  
		Size: 9.7 KB (9713 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0450ac27812ff482033b8d127e905349c07bd483cff1698f4bd0f3d268d6abeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255670894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3101d5db4d9311fe95fb3bba1fb699d356ad5ca81bbee21a302ba194efdc92eb`
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
# Thu, 02 Jul 2026 03:32:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:32:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 03:32:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac4999eb0b6fe68f663e4a3666447d33df057d7434a9aad7c38e57ccb76e91c`  
		Last Modified: Thu, 02 Jul 2026 03:33:28 GMT  
		Size: 221.0 MB (221029026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3d5025c98ca98b99001eb7bf24885ccbf2d3cc8d62345279a577255b74d63d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2377375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49410ca870795896f1d3ac5a4d78b0a30fca63a26be95571a338fb1cb0b591fd`

```dockerfile
```

-	Layers:
	-	`sha256:d2c79f00b8d433f67fed131773f76a3bbc6dc942379c9e8b63539aadb2e9dc92`  
		Last Modified: Thu, 02 Jul 2026 03:33:22 GMT  
		Size: 2.4 MB (2367734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0997306fd893fe2bc5a6ae28fa5c6a8245b7ac3505fecfda66f94bd59031afc`  
		Last Modified: Thu, 02 Jul 2026 03:33:22 GMT  
		Size: 9.6 KB (9641 bytes)  
		MIME: application/vnd.in-toto+json
