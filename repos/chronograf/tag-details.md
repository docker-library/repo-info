<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.10`](#chronograf110)
-	[`chronograf:1.10-alpine`](#chronograf110-alpine)
-	[`chronograf:1.10.9`](#chronograf1109)
-	[`chronograf:1.10.9-alpine`](#chronograf1109-alpine)
-	[`chronograf:1.11`](#chronograf111)
-	[`chronograf:1.11-alpine`](#chronograf111-alpine)
-	[`chronograf:1.11.6`](#chronograf1116)
-	[`chronograf:1.11.6-alpine`](#chronograf1116-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.10`

```console
$ docker pull chronograf@sha256:52d1f55edd7450deaa95dee2d23984aa1737a09b4290d2b3a1b04a600376241b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.10` - linux; amd64

```console
$ docker pull chronograf@sha256:5e44a02fde020de3adc00784fc9094ada4be4ff9dcc9a0c58062d2dce36d1713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84843856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd4a890f5754c3b50e8dfb1cc7a265220927302f41fc3830771623ff945c3b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 21 Oct 2026 00:46:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:46:26 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:46:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f6a636ca9cf4496f925717c0053a107843a89b7987b5b36824581b0db77d28`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 7.7 MB (7703443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ee4e54d71add90bb7a5b546f683b2a392f0f174103c1255486c6a714c410bf`  
		Last Modified: Wed, 21 Oct 2026 00:46:39 GMT  
		Size: 48.9 MB (48868007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5261206f9a134665c351ae9f5b449b75854da21e8d0e74459623434f3a4a176f`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1385c6e49c44fad811c926289fb27d70aef31f1d738e03ede2b7783c824cf1`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146d693e75852d115e864e763c6564c417f6aae14b6ff74e0f59637279ab5193`  
		Last Modified: Wed, 21 Oct 2026 00:46:38 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:a91e0a515181b48e32f24364bb2edd66ea9c12c4377c0d2c85e08ffdf2059036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d11ecbb513bcacb9a38139f5d613672182f528caa3a492da410de443ad4afa7`

```dockerfile
```

-	Layers:
	-	`sha256:2dff74f38a80b3ba9a16c928c6da08aaf8dde3bcdf2404dbf128940ddca1de21`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 2.9 MB (2859468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79aeb9bdf48266804effa0b66dd1a4f85168b17b80d52a7d6689c8ec5140d0ea`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:60c688f4c11f9437c32bce35966319684f620962b042b5ff2b58b84bc87567f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76636538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92fb10c1776e172b9d8524395c89f53004f42601f43ed025ebd9f8dd2a7248d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:29:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 21 Oct 2026 01:29:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 01:29:40 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 01:29:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:29:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c836c812336cd312e9094e66bd0e7d0cd7b7af52544b03816fa858a2dd5b459`  
		Last Modified: Wed, 21 Oct 2026 01:29:52 GMT  
		Size: 6.3 MB (6331140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cdd3a13d478e662f0ac5f13c9579c0c7ba55d87b733f2e1ccc0d3ca2a18e36e`  
		Last Modified: Wed, 21 Oct 2026 01:29:53 GMT  
		Size: 46.3 MB (46319440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2d61a2a939b22fb2df03163de2cf64b2783a4e1cbb7dd48d9909b6461aadfc`  
		Last Modified: Wed, 21 Oct 2026 01:29:51 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb530a0e6da95e28c2a17b874d6f478c6b1bb75912e60eb8ed32c59e9f3b7e5`  
		Last Modified: Wed, 21 Oct 2026 01:29:51 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e29fa34166ec4b60d962a53490c58a55da8dc7088451e635ded38c4cd5d93f`  
		Last Modified: Wed, 21 Oct 2026 01:29:52 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:210b2406a2b4e239ccff470bf5da09e276950d6888e3c000783af31a46209992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8fef77e390c5b4d22a35ac79ee546bebd0a6e7f0372287789d31a01d9b77b5`

```dockerfile
```

-	Layers:
	-	`sha256:6122b7470bb9b75c5b9ef62b17e4780482fc96e853ebbbe79f4e70798937cd01`  
		Last Modified: Wed, 21 Oct 2026 01:29:51 GMT  
		Size: 2.9 MB (2861757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e665147547dff07cb944a522a0256161e1374ae0055311b4609f234d4fdcf03c`  
		Last Modified: Wed, 21 Oct 2026 01:29:51 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:700daf54065aee10b50e441460b6ae2d529d1e150f375e4b8d9e0b74e44fd8b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81686907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575aef0c18e16be723bde028ab114089925cda9a2918685b537a3f17aa912d9b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 21 Oct 2026 00:49:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:50:00 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:50:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a99687a436bd810e802e8620522cc05b807cde507e4f2a8773625ac34cb21e3`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 7.5 MB (7514410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da626215eaf91ee5fba3f7675de6ebb082c22e2f015b989537c594942227a267`  
		Last Modified: Wed, 21 Oct 2026 00:50:12 GMT  
		Size: 46.0 MB (46009603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8eec1005e784aed2eca30c32f8a00e507e5f5df512eb33933aecef054da8aa`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adc9a0b1b34755980ea3f5d1da5a8cc2b8fd0b7edf663a1993a70bdcb632ec9`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d0763630efb7ebe68665d3c3914098b837ada5fdfa097b12fb8a4401ca3835`  
		Last Modified: Wed, 21 Oct 2026 00:50:12 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:a4965c8fb514b0f39c95c5be4c80c4c554afdb95385fafcbb1abb5179b0821ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a13507304eefe65cc2b57932938b929a66c5ded4f23ff0813e336b09f5e1a2`

```dockerfile
```

-	Layers:
	-	`sha256:163a6019ce658843b31f1b0d7c487ea4f01e077dbbd0b8cc305f58604c2161f6`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 2.9 MB (2859729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4fac2a47064d3a6bc8f32efed17cf422b26c5be550b4df52e61328b2ae57f9f`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10-alpine`

```console
$ docker pull chronograf@sha256:21d2e90048aed1c85c4d54de8a784311a314b26ae9d53356612de0d93dbc0315
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:30a25b30e8965e5911a10db2fd7a15c5344fd623a13235429f03b6d24e50a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36356198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a00352e02bbbd8965e459a3df2da772af9dbca280564c9a2952fb8157166da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:34 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:39:37 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 17 Sep 2026 21:39:37 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 17 Sep 2026 21:39:37 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 17 Sep 2026 21:39:38 GMT
VOLUME [/var/lib/chronograf]
# Thu, 17 Sep 2026 21:39:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:39:38 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6d0c4e427f32bf21afd2b6c2d031b25f530e3018c5bb252e4ec10a48442eda`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c47513e774fb5506355da2fa000cab088a245fcaae530e61f4ec508e084ffa3`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 296.6 KB (296648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af7545193e43999a675c8c7de875ce8e6f15ef21dc6de888cfa57014ac5b786`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 32.2 MB (32185081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8022eda9846f8a45cafe8829a7512f867331fc2ec449df1dd5620dff040e6f82`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263d20e741a567fab4d4aca5c648b433269ec9e43f9004861975cf843d2f3481`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c91a95ed0650a267fb45d2fa4226e3afe3e092117b4eb27c9c10e7a455bc7b`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:15a5c71380b8bb50feaa3f7b905912456b414336d3aa5ab601ad2ea87b8d9141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 KB (253876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef10d903b86cc1c702742e1fd37261682ed4236a1252c1f792af1668d752190`

```dockerfile
```

-	Layers:
	-	`sha256:bc653c584975527212dc3be57b103da93cd31d9983d33d993079bc937226f002`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 236.4 KB (236370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3287a437e43f349b40f59edfa341098146ef977f25903e6ea179218acd06bd93`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9`

```console
$ docker pull chronograf@sha256:52d1f55edd7450deaa95dee2d23984aa1737a09b4290d2b3a1b04a600376241b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.10.9` - linux; amd64

```console
$ docker pull chronograf@sha256:5e44a02fde020de3adc00784fc9094ada4be4ff9dcc9a0c58062d2dce36d1713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84843856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd4a890f5754c3b50e8dfb1cc7a265220927302f41fc3830771623ff945c3b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 21 Oct 2026 00:46:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:46:26 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:46:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:46:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f6a636ca9cf4496f925717c0053a107843a89b7987b5b36824581b0db77d28`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 7.7 MB (7703443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ee4e54d71add90bb7a5b546f683b2a392f0f174103c1255486c6a714c410bf`  
		Last Modified: Wed, 21 Oct 2026 00:46:39 GMT  
		Size: 48.9 MB (48868007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5261206f9a134665c351ae9f5b449b75854da21e8d0e74459623434f3a4a176f`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1385c6e49c44fad811c926289fb27d70aef31f1d738e03ede2b7783c824cf1`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146d693e75852d115e864e763c6564c417f6aae14b6ff74e0f59637279ab5193`  
		Last Modified: Wed, 21 Oct 2026 00:46:38 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:a91e0a515181b48e32f24364bb2edd66ea9c12c4377c0d2c85e08ffdf2059036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d11ecbb513bcacb9a38139f5d613672182f528caa3a492da410de443ad4afa7`

```dockerfile
```

-	Layers:
	-	`sha256:2dff74f38a80b3ba9a16c928c6da08aaf8dde3bcdf2404dbf128940ddca1de21`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 2.9 MB (2859468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79aeb9bdf48266804effa0b66dd1a4f85168b17b80d52a7d6689c8ec5140d0ea`  
		Last Modified: Wed, 21 Oct 2026 00:46:37 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:60c688f4c11f9437c32bce35966319684f620962b042b5ff2b58b84bc87567f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76636538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92fb10c1776e172b9d8524395c89f53004f42601f43ed025ebd9f8dd2a7248d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:29:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 21 Oct 2026 01:29:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 01:29:40 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 01:29:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:29:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:29:40 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c836c812336cd312e9094e66bd0e7d0cd7b7af52544b03816fa858a2dd5b459`  
		Last Modified: Wed, 21 Oct 2026 01:29:52 GMT  
		Size: 6.3 MB (6331140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cdd3a13d478e662f0ac5f13c9579c0c7ba55d87b733f2e1ccc0d3ca2a18e36e`  
		Last Modified: Wed, 21 Oct 2026 01:29:53 GMT  
		Size: 46.3 MB (46319440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2d61a2a939b22fb2df03163de2cf64b2783a4e1cbb7dd48d9909b6461aadfc`  
		Last Modified: Wed, 21 Oct 2026 01:29:51 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb530a0e6da95e28c2a17b874d6f478c6b1bb75912e60eb8ed32c59e9f3b7e5`  
		Last Modified: Wed, 21 Oct 2026 01:29:51 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e29fa34166ec4b60d962a53490c58a55da8dc7088451e635ded38c4cd5d93f`  
		Last Modified: Wed, 21 Oct 2026 01:29:52 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:210b2406a2b4e239ccff470bf5da09e276950d6888e3c000783af31a46209992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8fef77e390c5b4d22a35ac79ee546bebd0a6e7f0372287789d31a01d9b77b5`

```dockerfile
```

-	Layers:
	-	`sha256:6122b7470bb9b75c5b9ef62b17e4780482fc96e853ebbbe79f4e70798937cd01`  
		Last Modified: Wed, 21 Oct 2026 01:29:51 GMT  
		Size: 2.9 MB (2861757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e665147547dff07cb944a522a0256161e1374ae0055311b4609f234d4fdcf03c`  
		Last Modified: Wed, 21 Oct 2026 01:29:51 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:700daf54065aee10b50e441460b6ae2d529d1e150f375e4b8d9e0b74e44fd8b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81686907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575aef0c18e16be723bde028ab114089925cda9a2918685b537a3f17aa912d9b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Wed, 21 Oct 2026 00:49:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:50:00 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:50:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a99687a436bd810e802e8620522cc05b807cde507e4f2a8773625ac34cb21e3`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 7.5 MB (7514410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da626215eaf91ee5fba3f7675de6ebb082c22e2f015b989537c594942227a267`  
		Last Modified: Wed, 21 Oct 2026 00:50:12 GMT  
		Size: 46.0 MB (46009603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8eec1005e784aed2eca30c32f8a00e507e5f5df512eb33933aecef054da8aa`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adc9a0b1b34755980ea3f5d1da5a8cc2b8fd0b7edf663a1993a70bdcb632ec9`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d0763630efb7ebe68665d3c3914098b837ada5fdfa097b12fb8a4401ca3835`  
		Last Modified: Wed, 21 Oct 2026 00:50:12 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:a4965c8fb514b0f39c95c5be4c80c4c554afdb95385fafcbb1abb5179b0821ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a13507304eefe65cc2b57932938b929a66c5ded4f23ff0813e336b09f5e1a2`

```dockerfile
```

-	Layers:
	-	`sha256:163a6019ce658843b31f1b0d7c487ea4f01e077dbbd0b8cc305f58604c2161f6`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 2.9 MB (2859729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4fac2a47064d3a6bc8f32efed17cf422b26c5be550b4df52e61328b2ae57f9f`  
		Last Modified: Wed, 21 Oct 2026 00:50:11 GMT  
		Size: 15.9 KB (15874 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9-alpine`

```console
$ docker pull chronograf@sha256:21d2e90048aed1c85c4d54de8a784311a314b26ae9d53356612de0d93dbc0315
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10.9-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:30a25b30e8965e5911a10db2fd7a15c5344fd623a13235429f03b6d24e50a8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36356198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a00352e02bbbd8965e459a3df2da772af9dbca280564c9a2952fb8157166da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:34 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:39:34 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:39:37 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 17 Sep 2026 21:39:37 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 17 Sep 2026 21:39:37 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 17 Sep 2026 21:39:38 GMT
VOLUME [/var/lib/chronograf]
# Thu, 17 Sep 2026 21:39:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:39:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:39:38 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6d0c4e427f32bf21afd2b6c2d031b25f530e3018c5bb252e4ec10a48442eda`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c47513e774fb5506355da2fa000cab088a245fcaae530e61f4ec508e084ffa3`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 296.6 KB (296648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af7545193e43999a675c8c7de875ce8e6f15ef21dc6de888cfa57014ac5b786`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 32.2 MB (32185081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8022eda9846f8a45cafe8829a7512f867331fc2ec449df1dd5620dff040e6f82`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 12.2 KB (12236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263d20e741a567fab4d4aca5c648b433269ec9e43f9004861975cf843d2f3481`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c91a95ed0650a267fb45d2fa4226e3afe3e092117b4eb27c9c10e7a455bc7b`  
		Last Modified: Thu, 17 Sep 2026 21:39:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:15a5c71380b8bb50feaa3f7b905912456b414336d3aa5ab601ad2ea87b8d9141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 KB (253876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef10d903b86cc1c702742e1fd37261682ed4236a1252c1f792af1668d752190`

```dockerfile
```

-	Layers:
	-	`sha256:bc653c584975527212dc3be57b103da93cd31d9983d33d993079bc937226f002`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 236.4 KB (236370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3287a437e43f349b40f59edfa341098146ef977f25903e6ea179218acd06bd93`  
		Last Modified: Thu, 17 Sep 2026 21:39:45 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11`

```console
$ docker pull chronograf@sha256:51041d399ccea7e2f49b3dd16f1f4ff4360e585aabaff8827c43d72ae5444dde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:7cfb132b2f6c87d070ef152dc4e85413ea529609a645baed1a0090e893f46d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96971329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029d0a4d687d232480876f7eda59e2d589a157f33105d296f79f2561c7ec3d12`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 00:46:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:46:33 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:46:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e241ba715e5e5da26dee7a8066c8c0177ad05173a7aa6c229519b18749da9da3`  
		Last Modified: Wed, 21 Oct 2026 00:46:48 GMT  
		Size: 7.7 MB (7703442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb792ad61fa612400753365c8424c5695757d4299135ed65f212b13a13fd6e9`  
		Last Modified: Wed, 21 Oct 2026 00:46:49 GMT  
		Size: 61.0 MB (60995481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91dd9bad8dbd43742b135c2aee43e79c63079ab825f84ba7c099631fdd681c1`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95defbdd4186ec95c131199128a84a386954aaa1edd335296720d27ccfb4e93a`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d2ba43a5efcfc5628284749e98f8afe374dfe06d7f4c67d6eabd256e5df5fa`  
		Last Modified: Wed, 21 Oct 2026 00:46:48 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:9cfa7b1673e8631d33287b355c99d0bee9ef2b6f3661685b6423d286c3ee9ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a8f298ab69369c7e1ae4a8b6cb09d9fc5f720bb1d5ba78303e8786006162e1`

```dockerfile
```

-	Layers:
	-	`sha256:ea131daffed3962fcdf1d4626360b3b669ff68acf944aa528e5d20ed14d9ae23`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 2.9 MB (2877746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92e99cb5e64282d312c2c36c67645829e56375e82c58865e1556633b59a6c9ea`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:31eeac8303bb31b4ab62a2f3ce40e7e92093b2c351a9fe585f0a2308204facde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93631050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422d8fd24429435c5757102b6d388d12beb2759a2d673531b5ecf748b72e9efb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 00:50:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:50:00 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:50:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d243647a013ac66346a583019aa8871aa6ca59753c71eecc8e4ea77ffc12a1`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 7.5 MB (7514405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba636d5cec6359c7ce2be4688d30ed62d1f204a8abe82c4574c341683e1e388`  
		Last Modified: Wed, 21 Oct 2026 00:50:16 GMT  
		Size: 58.0 MB (57953744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d2bd0728a7548dc5bca3e533a314389b7f51d21feda7818dc468a3c8264ba`  
		Last Modified: Wed, 21 Oct 2026 00:50:13 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090e7002b46e323323b2b8648415927112fdf9532a7b6632da86dadb7d0862a8`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49a984350410e7363d523f560330f75008712adbb6cc98fd6876e01687a587d`  
		Last Modified: Wed, 21 Oct 2026 00:50:15 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:a4316dadf244e087c5058d835e610e32bd3acab069e4d4927c983c018183c125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3bab40c2eba8ff281fb9bdddc56411dbd16ef7ab65843aea4d027e8010961c`

```dockerfile
```

-	Layers:
	-	`sha256:9e9864e2d0062463cb1c221b9f78c01899b34a3b51a3140c2b9ba3fb3ff72049`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 2.9 MB (2876960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:783a83f3b9dd91b413f6669f118758da76669c4806143c1a255519aa50f3dafc`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 16.2 KB (16189 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:2037cc4331be94261031c9786434c970400eb486fcb4e98bf2affdd8d7043421
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:626a81d2ccf97758c3c7c5c444a507818397d1f9903303c554c336d8d33844a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66185865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb95000e7e4ec91e72fe19e61ac0ac8d72e08b5381cdbc86de9febb55b2d734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 17:43:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 17:43:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:44:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:44:31 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:44:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:44:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63da2a6bbe2850468098d1cb11ed5d0d88c4a0d34e9a39e9dcdf28f20bcabc25`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1acb61cd457a8e2c081d346844911f066d7228e9a4dde8caf160cabfa7a487d`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 296.7 KB (296661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124fc7349ff1e7eaf1fba3f0996849fec3a8d43f6bd616c8d47f463edbc56123`  
		Last Modified: Fri, 16 Oct 2026 17:44:46 GMT  
		Size: 62.0 MB (62014735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40118ae28a9aee5a8848d8e995d18f61cec4f34e3b84b417a1362846d4dc75d3`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164f7eaaa95491eb9cd28677dbe8b21d80414911b82f68bf52a4ea859d00afdc`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d329273782578740f6268cf368739f41a678bdc064067b9ae6224dec334bc589`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:865b2b9a8d165132105fb56fdaac7a7961227e22f1fcf2ad505ef0dbf901cc03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8a4bf4c5e90f898634dd5dbee816236638c25ca0373c077e320503980d7c7d`

```dockerfile
```

-	Layers:
	-	`sha256:b81290e84699af1b9a35dc198eb4cbc9fbc53f97c21d651a544e8c317d9006de`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8bc4ed29f0845892040c9c9fca0d84c69527198c26da65ca16a289cc5292726`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.6`

```console
$ docker pull chronograf@sha256:51041d399ccea7e2f49b3dd16f1f4ff4360e585aabaff8827c43d72ae5444dde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.6` - linux; amd64

```console
$ docker pull chronograf@sha256:7cfb132b2f6c87d070ef152dc4e85413ea529609a645baed1a0090e893f46d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96971329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029d0a4d687d232480876f7eda59e2d589a157f33105d296f79f2561c7ec3d12`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 00:46:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:46:33 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:46:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e241ba715e5e5da26dee7a8066c8c0177ad05173a7aa6c229519b18749da9da3`  
		Last Modified: Wed, 21 Oct 2026 00:46:48 GMT  
		Size: 7.7 MB (7703442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb792ad61fa612400753365c8424c5695757d4299135ed65f212b13a13fd6e9`  
		Last Modified: Wed, 21 Oct 2026 00:46:49 GMT  
		Size: 61.0 MB (60995481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91dd9bad8dbd43742b135c2aee43e79c63079ab825f84ba7c099631fdd681c1`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95defbdd4186ec95c131199128a84a386954aaa1edd335296720d27ccfb4e93a`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d2ba43a5efcfc5628284749e98f8afe374dfe06d7f4c67d6eabd256e5df5fa`  
		Last Modified: Wed, 21 Oct 2026 00:46:48 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.6` - unknown; unknown

```console
$ docker pull chronograf@sha256:9cfa7b1673e8631d33287b355c99d0bee9ef2b6f3661685b6423d286c3ee9ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a8f298ab69369c7e1ae4a8b6cb09d9fc5f720bb1d5ba78303e8786006162e1`

```dockerfile
```

-	Layers:
	-	`sha256:ea131daffed3962fcdf1d4626360b3b669ff68acf944aa528e5d20ed14d9ae23`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 2.9 MB (2877746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92e99cb5e64282d312c2c36c67645829e56375e82c58865e1556633b59a6c9ea`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:31eeac8303bb31b4ab62a2f3ce40e7e92093b2c351a9fe585f0a2308204facde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93631050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422d8fd24429435c5757102b6d388d12beb2759a2d673531b5ecf748b72e9efb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 00:50:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:50:00 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:50:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d243647a013ac66346a583019aa8871aa6ca59753c71eecc8e4ea77ffc12a1`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 7.5 MB (7514405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba636d5cec6359c7ce2be4688d30ed62d1f204a8abe82c4574c341683e1e388`  
		Last Modified: Wed, 21 Oct 2026 00:50:16 GMT  
		Size: 58.0 MB (57953744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d2bd0728a7548dc5bca3e533a314389b7f51d21feda7818dc468a3c8264ba`  
		Last Modified: Wed, 21 Oct 2026 00:50:13 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090e7002b46e323323b2b8648415927112fdf9532a7b6632da86dadb7d0862a8`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49a984350410e7363d523f560330f75008712adbb6cc98fd6876e01687a587d`  
		Last Modified: Wed, 21 Oct 2026 00:50:15 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.6` - unknown; unknown

```console
$ docker pull chronograf@sha256:a4316dadf244e087c5058d835e610e32bd3acab069e4d4927c983c018183c125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3bab40c2eba8ff281fb9bdddc56411dbd16ef7ab65843aea4d027e8010961c`

```dockerfile
```

-	Layers:
	-	`sha256:9e9864e2d0062463cb1c221b9f78c01899b34a3b51a3140c2b9ba3fb3ff72049`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 2.9 MB (2876960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:783a83f3b9dd91b413f6669f118758da76669c4806143c1a255519aa50f3dafc`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 16.2 KB (16189 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.6-alpine`

```console
$ docker pull chronograf@sha256:2037cc4331be94261031c9786434c970400eb486fcb4e98bf2affdd8d7043421
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:626a81d2ccf97758c3c7c5c444a507818397d1f9903303c554c336d8d33844a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66185865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb95000e7e4ec91e72fe19e61ac0ac8d72e08b5381cdbc86de9febb55b2d734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 17:43:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 17:43:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:44:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:44:31 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:44:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:44:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63da2a6bbe2850468098d1cb11ed5d0d88c4a0d34e9a39e9dcdf28f20bcabc25`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1acb61cd457a8e2c081d346844911f066d7228e9a4dde8caf160cabfa7a487d`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 296.7 KB (296661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124fc7349ff1e7eaf1fba3f0996849fec3a8d43f6bd616c8d47f463edbc56123`  
		Last Modified: Fri, 16 Oct 2026 17:44:46 GMT  
		Size: 62.0 MB (62014735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40118ae28a9aee5a8848d8e995d18f61cec4f34e3b84b417a1362846d4dc75d3`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164f7eaaa95491eb9cd28677dbe8b21d80414911b82f68bf52a4ea859d00afdc`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d329273782578740f6268cf368739f41a678bdc064067b9ae6224dec334bc589`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.6-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:865b2b9a8d165132105fb56fdaac7a7961227e22f1fcf2ad505ef0dbf901cc03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8a4bf4c5e90f898634dd5dbee816236638c25ca0373c077e320503980d7c7d`

```dockerfile
```

-	Layers:
	-	`sha256:b81290e84699af1b9a35dc198eb4cbc9fbc53f97c21d651a544e8c317d9006de`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8bc4ed29f0845892040c9c9fca0d84c69527198c26da65ca16a289cc5292726`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:2037cc4331be94261031c9786434c970400eb486fcb4e98bf2affdd8d7043421
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:626a81d2ccf97758c3c7c5c444a507818397d1f9903303c554c336d8d33844a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66185865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb95000e7e4ec91e72fe19e61ac0ac8d72e08b5381cdbc86de9febb55b2d734`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 17:43:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 17:43:36 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:44:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:44:31 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:44:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:44:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:44:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63da2a6bbe2850468098d1cb11ed5d0d88c4a0d34e9a39e9dcdf28f20bcabc25`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1acb61cd457a8e2c081d346844911f066d7228e9a4dde8caf160cabfa7a487d`  
		Last Modified: Fri, 16 Oct 2026 17:44:01 GMT  
		Size: 296.7 KB (296661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124fc7349ff1e7eaf1fba3f0996849fec3a8d43f6bd616c8d47f463edbc56123`  
		Last Modified: Fri, 16 Oct 2026 17:44:46 GMT  
		Size: 62.0 MB (62014735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40118ae28a9aee5a8848d8e995d18f61cec4f34e3b84b417a1362846d4dc75d3`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164f7eaaa95491eb9cd28677dbe8b21d80414911b82f68bf52a4ea859d00afdc`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d329273782578740f6268cf368739f41a678bdc064067b9ae6224dec334bc589`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:865b2b9a8d165132105fb56fdaac7a7961227e22f1fcf2ad505ef0dbf901cc03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8a4bf4c5e90f898634dd5dbee816236638c25ca0373c077e320503980d7c7d`

```dockerfile
```

-	Layers:
	-	`sha256:b81290e84699af1b9a35dc198eb4cbc9fbc53f97c21d651a544e8c317d9006de`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8bc4ed29f0845892040c9c9fca0d84c69527198c26da65ca16a289cc5292726`  
		Last Modified: Fri, 16 Oct 2026 17:44:44 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:51041d399ccea7e2f49b3dd16f1f4ff4360e585aabaff8827c43d72ae5444dde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:7cfb132b2f6c87d070ef152dc4e85413ea529609a645baed1a0090e893f46d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96971329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029d0a4d687d232480876f7eda59e2d589a157f33105d296f79f2561c7ec3d12`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 00:46:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:46:33 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:46:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e241ba715e5e5da26dee7a8066c8c0177ad05173a7aa6c229519b18749da9da3`  
		Last Modified: Wed, 21 Oct 2026 00:46:48 GMT  
		Size: 7.7 MB (7703442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb792ad61fa612400753365c8424c5695757d4299135ed65f212b13a13fd6e9`  
		Last Modified: Wed, 21 Oct 2026 00:46:49 GMT  
		Size: 61.0 MB (60995481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91dd9bad8dbd43742b135c2aee43e79c63079ab825f84ba7c099631fdd681c1`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95defbdd4186ec95c131199128a84a386954aaa1edd335296720d27ccfb4e93a`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d2ba43a5efcfc5628284749e98f8afe374dfe06d7f4c67d6eabd256e5df5fa`  
		Last Modified: Wed, 21 Oct 2026 00:46:48 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:9cfa7b1673e8631d33287b355c99d0bee9ef2b6f3661685b6423d286c3ee9ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a8f298ab69369c7e1ae4a8b6cb09d9fc5f720bb1d5ba78303e8786006162e1`

```dockerfile
```

-	Layers:
	-	`sha256:ea131daffed3962fcdf1d4626360b3b669ff68acf944aa528e5d20ed14d9ae23`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 2.9 MB (2877746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92e99cb5e64282d312c2c36c67645829e56375e82c58865e1556633b59a6c9ea`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:31eeac8303bb31b4ab62a2f3ce40e7e92093b2c351a9fe585f0a2308204facde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93631050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422d8fd24429435c5757102b6d388d12beb2759a2d673531b5ecf748b72e9efb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 00:50:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:50:00 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:50:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d243647a013ac66346a583019aa8871aa6ca59753c71eecc8e4ea77ffc12a1`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 7.5 MB (7514405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba636d5cec6359c7ce2be4688d30ed62d1f204a8abe82c4574c341683e1e388`  
		Last Modified: Wed, 21 Oct 2026 00:50:16 GMT  
		Size: 58.0 MB (57953744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d2bd0728a7548dc5bca3e533a314389b7f51d21feda7818dc468a3c8264ba`  
		Last Modified: Wed, 21 Oct 2026 00:50:13 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090e7002b46e323323b2b8648415927112fdf9532a7b6632da86dadb7d0862a8`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49a984350410e7363d523f560330f75008712adbb6cc98fd6876e01687a587d`  
		Last Modified: Wed, 21 Oct 2026 00:50:15 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:a4316dadf244e087c5058d835e610e32bd3acab069e4d4927c983c018183c125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3bab40c2eba8ff281fb9bdddc56411dbd16ef7ab65843aea4d027e8010961c`

```dockerfile
```

-	Layers:
	-	`sha256:9e9864e2d0062463cb1c221b9f78c01899b34a3b51a3140c2b9ba3fb3ff72049`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 2.9 MB (2876960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:783a83f3b9dd91b413f6669f118758da76669c4806143c1a255519aa50f3dafc`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 16.2 KB (16189 bytes)  
		MIME: application/vnd.in-toto+json
