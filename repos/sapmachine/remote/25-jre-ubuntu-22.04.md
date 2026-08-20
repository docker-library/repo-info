## `sapmachine:25-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:5205564c6264336e9a1eaa2555fd1916b46acab698b32bc7e93e4e7474f96598
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:db75da53ca3a18e2f70f3081d4238de5091117861ec4468f559a4cf1de47a817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90247994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa728db8ccd96554a4aa7c671f117a36cfaf70ac386e986478de7e0532562f1f`
-	Default Command: `["bash"]`

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
# Thu, 20 Aug 2026 18:06:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:06:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:06:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23590706e578d75e6752a2ed5464dd11aa8af1944e6723549a56443120703fb`  
		Last Modified: Thu, 20 Aug 2026 18:06:15 GMT  
		Size: 60.5 MB (60511051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d030c538447df611b8b9854b9d751eb9b552b2117547f9bb94e9fa6d734bf395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3797984625dd55a694af82ac2faa01db398b393372b647de37ff52b80d43f06`

```dockerfile
```

-	Layers:
	-	`sha256:4b777e7a14fe03b521f20dcb1298e1fdc45c5c14d471aff2324f0348dcc6a7d9`  
		Last Modified: Thu, 20 Aug 2026 18:06:14 GMT  
		Size: 2.6 MB (2553747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ff0a53f95c06c35b69fd08569c4127b334824be64899e6e2b179ee8374501cc`  
		Last Modified: Thu, 20 Aug 2026 18:06:14 GMT  
		Size: 10.2 KB (10185 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5ab24fa569308c9b2317cd666bebbc924ac34a522b09805793e6dee7e9b178a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87040151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed510b25af21decd3b042200c4b500172b10cb67c0e6705e34f80956cb2115b9`
-	Default Command: `["bash"]`

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
# Thu, 20 Aug 2026 18:03:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:03:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8728dc4e5322e9301cff31ad72a77972dd5b163cd48ec04bc05d68bbcf68ca1a`  
		Last Modified: Thu, 20 Aug 2026 18:03:24 GMT  
		Size: 59.4 MB (59419698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1a8304d0ef992869b1975518248f49acc198654cf6dec9ce1258fd5668dd07a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fdb3fbdd5fffab04544e75d17134bf3a362c85598b07ae75f196df7a90aeb68`

```dockerfile
```

-	Layers:
	-	`sha256:82533eb1f80eb5baf99c083347436bc2a310901ff3d11cfc92dc4e34a775313b`  
		Last Modified: Thu, 20 Aug 2026 18:03:22 GMT  
		Size: 2.6 MB (2553450 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b8aabf6bd4eba307e1303895a92f0b17f9e7bc94961776256b21da2dfeba507`  
		Last Modified: Thu, 20 Aug 2026 18:03:22 GMT  
		Size: 10.3 KB (10312 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ab7d38dfb28698f8ba4548e50f925640ba7a1b8bfa2e1bb38b57112551aa6a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94270057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ac2bb03eb3b78548309309a18417d5d61dee74ccc6da53b63a1e286671cbd9`
-	Default Command: `["bash"]`

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
# Thu, 20 Aug 2026 18:07:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:07:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:07:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e3e50e62d9788ae2a4f59a734b6a1d7f02f60b80b8f435a2868367490eb164`  
		Last Modified: Thu, 20 Aug 2026 18:07:46 GMT  
		Size: 59.6 MB (59631912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cdc89d7174fb27d57cbcbd70b8761f53703144fcdaead6504d4c9e0d1b42df20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdec96969e90ba5d412069e842c87c6da69d334bdff43ce265d4331a7993327`

```dockerfile
```

-	Layers:
	-	`sha256:accf8a8908f7afc9a47ed97f34e26f6bf00dcfd5f7d6dde438534f0f1071e869`  
		Last Modified: Thu, 20 Aug 2026 18:07:44 GMT  
		Size: 2.6 MB (2552661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e1f1f7c95d5d816736a5c8444d763baed04bee23d96449809d4731c490b2d6a`  
		Last Modified: Thu, 20 Aug 2026 18:07:44 GMT  
		Size: 10.2 KB (10241 bytes)  
		MIME: application/vnd.in-toto+json
