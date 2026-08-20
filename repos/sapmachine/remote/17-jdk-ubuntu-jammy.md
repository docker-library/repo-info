## `sapmachine:17-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:5fc2a6f1629162f312ef2ef9363907cae7144f8c32d7ee13dbc68366f6fab423
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:1860f3ad7eb7673d7c256774219e713fe6322900e8213c7ae1ba3726726bc149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234522058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7b1ff6c92340004b1c2f1d78d874e2213ec96dcd9b9669415887f35338916b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:08:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:08:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:08:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4dd28deb559a268cfd69aa714341d50fe3c5009b540cf5516c870088c3c083`  
		Last Modified: Thu, 20 Aug 2026 18:08:55 GMT  
		Size: 204.8 MB (204785115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc6fe543e4201e20c7a19d0b0c5b62c01fa348946d0d3b6a37b3c65b15a85d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d5cd5e19588ba630978db5799ebb602b5134ddbec7582dad8bd05a8a233890`

```dockerfile
```

-	Layers:
	-	`sha256:874737d5aaa9be2d2594051842f175eb37957eead3c62391de141e9d26c53089`  
		Last Modified: Thu, 20 Aug 2026 18:08:47 GMT  
		Size: 2.6 MB (2631177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f22b5b4e05fb38364fb8abae5cc1f53039fdbf709af31e6de9da11db128157`  
		Last Modified: Thu, 20 Aug 2026 18:08:47 GMT  
		Size: 10.9 KB (10851 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:21e96330b5cddcbcef0c15bd3c9a6ceaaedc76706c153be59f18ac201430e222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231137019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed88e938194babda7beb9be352fcb53d0bc069b01e11d2f54b60c8229a24ea5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:05:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:05:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:05:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283334bfbbbad6736eda4fe3bdefa117187b1bb4221c7f9db965d49f4909a2c0`  
		Last Modified: Thu, 20 Aug 2026 18:05:34 GMT  
		Size: 203.5 MB (203516566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:617a4a4e04a11fe14afe22770907d57ca461d8ae20b767b584cddfe8bb5d13bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817f0cd00ffce0910b3fa913e0b7e401f4786ea34aa3731e3061c8a22ca951c4`

```dockerfile
```

-	Layers:
	-	`sha256:ef716e81227c3b556c3f1419cd7721809ebf1520180efcdc14b0c227dd9e327e`  
		Last Modified: Thu, 20 Aug 2026 18:05:30 GMT  
		Size: 2.6 MB (2630907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7808da87832c3749b26caf66ad59cf522bc6725d7cf84f0e0a0e2c5003800564`  
		Last Modified: Thu, 20 Aug 2026 18:05:29 GMT  
		Size: 11.0 KB (11003 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:cbfee80bc27910626798a2768aebd35496de14ab6118852fb0bb97a7f86392ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.5 MB (238476739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcace29374ac0bcceca0279d48da7bad5ca1d0077a09d7f15ca8db356e876e3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:22:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:22:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:22:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca84da3d7f43dcd03489c5a013266a3db9031243f0cf0c859b272f9b2ff01a1`  
		Last Modified: Thu, 20 Aug 2026 18:22:46 GMT  
		Size: 203.8 MB (203838594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:05514492d4690d426e1cc8949e6defe644ff6d7e5ce42f9f79b33e480291c3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2639706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6651739747c23d558e1bb35d3be310e6bc807e0e81e92fd8354b6902f17b4b2`

```dockerfile
```

-	Layers:
	-	`sha256:ad0e5b4465352ba2a5912c62e4f59e3a155ca0b5aea0b4cb92b443ca493a4c87`  
		Last Modified: Thu, 20 Aug 2026 18:22:41 GMT  
		Size: 2.6 MB (2628787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966d4310a3747db53fb188207933d20e6472e5770f6a59172f6b1ac9aad346a4`  
		Last Modified: Thu, 20 Aug 2026 18:22:41 GMT  
		Size: 10.9 KB (10919 bytes)  
		MIME: application/vnd.in-toto+json
