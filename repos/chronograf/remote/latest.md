## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d9a120ce94b9743cf205549d5c68b7b0c75223256800b953b98984a74c417a39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:76834b984d78b7c7510fe458c698e56ca9ce5040f78b0c6ff930fc53410f9086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96337293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e498c911cb39ede88c83942091d936210cd9f4f92875a6f6f9991c7afa48e85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 14 Jul 2026 01:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:44:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb7164261e72f39c972719171bd6a1099601ef877ba7c7be3cbd326db44e31d`  
		Last Modified: Tue, 14 Jul 2026 01:44:18 GMT  
		Size: 7.9 MB (7883311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5914fb6318c0a6e2b80794ab8d2fd89aed201a9ea38927b8a01f14e840dc6edf`  
		Last Modified: Tue, 14 Jul 2026 01:44:19 GMT  
		Size: 60.2 MB (60196866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2748683ee668b95119d9719837f7b5a4053c250f7e5f262b94f50df7ea2bcafb`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1750a0c7e8025a12964111a62f4768d80065ae9eea7ca8d7088b32441fea090`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e272e5c878618418e805e39843e5ff18c6470c1ed82beb6274aedf1353d5b921`  
		Last Modified: Tue, 14 Jul 2026 01:44:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:98cf64da1897f10d4a48100cb10db72c5fc0e6bff48c424ce89bf8486c69cc1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8fc15e63a47c4fd7909e14165ab638b31989f21cfce1460b9ab4bc06a7c56e`

```dockerfile
```

-	Layers:
	-	`sha256:c3b1c804523968c666abb7655a2b85cbeeed1797f4f470682b36ecefae933a28`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 2.9 MB (2873774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5de58d5f70edf24ed39f44be3b0f4c8dbd3ab396f049aaf25a06fe590c3ad4`  
		Last Modified: Tue, 14 Jul 2026 01:44:17 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:7f6ba8a05e8752787341b7fe2a6a74810b06aa9fa70a1a0228f775cc695b037a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76798073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930d1c377ac04e3da986523b9e03970d9aff20f8036670f211d374ae5e6e562c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 06 Apr 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1775433600'
# Tue, 07 Apr 2026 02:04:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 07 Apr 2026 02:04:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 07 Apr 2026 02:04:39 GMT
VOLUME [/var/lib/chronograf]
# Tue, 07 Apr 2026 02:04:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 07 Apr 2026 02:04:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 07 Apr 2026 02:04:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dabf2c04988ff47a9777c2e6aee85c1e347525704928c5c1a366fae1fb63fea2`  
		Last Modified: Tue, 07 Apr 2026 00:58:55 GMT  
		Size: 23.9 MB (23941461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde4224141eb326416434e57e6985960fa0299c171636ec51c978d7483ded221`  
		Last Modified: Tue, 07 Apr 2026 02:04:50 GMT  
		Size: 6.5 MB (6512130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39644797429280d1790a41b83be262964fe685b66a13098f85a2830ef136af23`  
		Last Modified: Tue, 07 Apr 2026 02:04:51 GMT  
		Size: 46.3 MB (46320009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a038716dc519bd0d53565ee9d170bb27389cee982f799ed02c5b30bb400da63b`  
		Last Modified: Tue, 07 Apr 2026 02:04:49 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2857e0024941e8431e0d2e7288ff873bb60af2b99250a6c109fb700e616232c`  
		Last Modified: Tue, 07 Apr 2026 02:04:49 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac7ccabd4f0e669d232e23f27536a4797faec571f1d5b385e8d37e9543ad1d4`  
		Last Modified: Tue, 07 Apr 2026 02:04:50 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:d033ac4c98bc3deb3c46315bff42913e431c32321890ec7914cd6b43bf0a4454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2874197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a769173f691e7dbe1bbac685b1b6d2cf8af5e40c11a7536386e603ca5e558e45`

```dockerfile
```

-	Layers:
	-	`sha256:dff92a3ce28b58e918bb8a1b393141f0d15f0a7436d538d1b53bafdf3cd2f3f0`  
		Last Modified: Tue, 07 Apr 2026 02:04:49 GMT  
		Size: 2.9 MB (2858027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29723eb32c4a4046b83b01b8e97bd5b93cfc334f24c3dcc9145d178038a36230`  
		Last Modified: Tue, 07 Apr 2026 02:04:49 GMT  
		Size: 16.2 KB (16170 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8c42014d262f8cca0879d903acb1d11c99ebb673620d98bb61c632422ee8080c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93052018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1b852f573d90d2a4ca3648910eabe32823fa2760a05389c28e9c68abdf32e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:06 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
ENV CHRONOGRAF_VERSION=1.11.4
# Tue, 14 Jul 2026 01:47:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 14 Jul 2026 01:47:12 GMT
VOLUME [/var/lib/chronograf]
# Tue, 14 Jul 2026 01:47:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574d254d2f32853d66b676f4a3c89d35655acc293b780d081bc56eda622198f6`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 7.7 MB (7699834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494c5ec699cd0cdc85a245013f1fdb2db1ba65385896fde16606f7632b668171`  
		Last Modified: Tue, 14 Jul 2026 01:47:27 GMT  
		Size: 57.2 MB (57210457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594ebb7e2a394f4338f375b309381ac789c2a406fd064d8311b72ba201a180b8`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ea2416bdb9f1a53b50fd31ce19b1ba1c0904fe1337dadef7679d13c802ff81`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fab15242d6815ef56bf3a7091483d167f5e81d7f4d9a634d54a54831e245171`  
		Last Modified: Tue, 14 Jul 2026 01:47:26 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:fe20408e1f94e0612640b9ca4136f672105eed6d0b352b004d671ca4f3488ed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2889180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de81ea03bfa47c4293ac626ec2ae94b6a4137974e17e33bb08ff5856f4af503d`

```dockerfile
```

-	Layers:
	-	`sha256:d6159231959434c1e2bad79434df6b0e5904d885fa7d8acc335b1344d1626c43`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 2.9 MB (2872988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deb30901d6e09b87d2fffa76590d8e8120c9312f70d0731081211512006efc6c`  
		Last Modified: Tue, 14 Jul 2026 01:47:25 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
