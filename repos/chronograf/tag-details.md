<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.10`](#chronograf110)
-	[`chronograf:1.10-alpine`](#chronograf110-alpine)
-	[`chronograf:1.10.9`](#chronograf1109)
-	[`chronograf:1.10.9-alpine`](#chronograf1109-alpine)
-	[`chronograf:1.11`](#chronograf111)
-	[`chronograf:1.11-alpine`](#chronograf111-alpine)
-	[`chronograf:1.11.8`](#chronograf1118)
-	[`chronograf:1.11.8-alpine`](#chronograf1118-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.10`

```console
$ docker pull chronograf@sha256:3f54e367506f6809bb60be7fddc78e2b25f9abbd706b910d0b3a033c5c8369d4
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
$ docker pull chronograf@sha256:bda5aade6abcc2d1ff66ae12c3e7b5397b538c993d17c189b07d09bf167c3bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84844703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca2ef134e67047e7abb7f97d74a1bf171f8a4439ad7cbacbd918480d198944b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 24 Nov 2026 04:39:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:39:25 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:39:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:39:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ec56dd893cee1b9c88048d28a885301f567c075d58e949d250c6d252c581b6`  
		Last Modified: Tue, 24 Nov 2026 04:39:36 GMT  
		Size: 7.7 MB (7704273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692e11b0e86ae446e6605d07031852ca869062b7d825a549434447254a01857b`  
		Last Modified: Tue, 24 Nov 2026 04:39:37 GMT  
		Size: 48.9 MB (48868016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7b6daf516bb30844294c23867a4a2c41a3c81584e93ce643d6488fbce346ee`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ad79af3b47f1b0718d1fc29bb245ee2d4789fbc9ace40439572d56c19620e4`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b770210b64eddb14abbaf9573a128e813d74d0e8ba4f60a8f88f9ae4aa64d6`  
		Last Modified: Tue, 24 Nov 2026 04:39:36 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:29978d629de5e64469b842fa67cf8236ee708726173606435777ba8a7a1920bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7319561eb658993f8cb24eb409b4846bda9ba2226be9fb74abddcef0cee5f3fb`

```dockerfile
```

-	Layers:
	-	`sha256:0549827ca9478e371811b24131e615e48b5add2aa2d1f7471ba74da5d5bf44c8`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 2.9 MB (2859550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10216490fc98d758d235a0974053bfb2cca8cba4a2cb12a129594df7a1838004`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:9b739a0180c0a3e7f92357de1fa8d8c504e8cb61b5365441ee595ccaf2539644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76637054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117c07a479e6d290fbfd16c87fe0f3592d40aa0a86df9a7bc275ffccd64e3667`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 24 Nov 2026 05:16:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 05:16:19 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 05:16:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:16:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dbe4636f037e07987ed4c9269c75a4aa8678e0b031a1905bc2239bdd57cdf136`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 24.0 MB (23961330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea8159fa902ac08e7003fe1863393c59d0848589ce35a3bc30977baede647ad`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 6.3 MB (6331771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bf46a1b44e3d4a1490b7c3b06574137b4357affe62aeb25a71ec24911ddf40`  
		Last Modified: Tue, 24 Nov 2026 05:16:31 GMT  
		Size: 46.3 MB (46319492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e586ee6eff5c963883419b7299f8d755074b9de47bb0bbdd3c71ad17142e181`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4abc0ddbbbe0b8da980cf0b81703e0fc311dde6c4ef9d2fbc9059dbf74d42d`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0c2df1fe79fc622e97d3a8ee752f2137597d2925c1cc7c943b218e5a12db53`  
		Last Modified: Tue, 24 Nov 2026 05:16:31 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:6a6ebaf3a8e73c1adbceccc886a1e375de890103e5cd39961c4a32ab1a378e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc96e15397f29ba6bed9f036e9899182117ef65f6874a87d7b528931ce3f6952`

```dockerfile
```

-	Layers:
	-	`sha256:cce8b5ac8c343b5203ae085c8bb266bc270e9dda025ab902403cc902b0332ded`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 2.9 MB (2861839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c9fc03d136054810f5fb5604f010ea6ad00cdcdaee4bbb9d195987f43c050eb`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7a1ffa727b0f6ccc4750e456143084c1a3426d3bd825953edc99772213907d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81693398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3161c24bc001fe514c108e9704ece0164a401334e830a989c3e1591c6377b10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:42 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 24 Nov 2026 04:43:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:43:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:43:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:43:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612382e2fcd9a53dca72119213826c57c8ac0e15670f48f847d32a47fc12ac0e`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 7.5 MB (7515242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711fbf3e46a0055ec9aa1206925b7fb157c25781c2fef4a94a9a630315a4a4e5`  
		Last Modified: Tue, 24 Nov 2026 04:44:02 GMT  
		Size: 46.0 MB (46009386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d157684855a2ba6500248aad8d126dc21a7dacc11ed043cfc22081a045120752`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359b215412904d00c28e30631f7762d315cc7ea0b5bdbebde338772c42c9fa2`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4486cfa3036fcd7087780e29d2488e1c5b019b09115d57175ed0140542e30781`  
		Last Modified: Tue, 24 Nov 2026 04:44:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:117755ab309ab1157fb63b20d8c5a6cad62a694c1e619d5025b86d50dc298760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c479253d5e1fb869a92bf6465be21741e104a0ec070e4275b686a6ef0cf42b`

```dockerfile
```

-	Layers:
	-	`sha256:a636cf7a7bd7b1affbe55faaa6ae02eee77d06dead0bbc79173feb92841289ec`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 2.9 MB (2859811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f40133a5ee2abb52f6b14e1cb4708ab293b401b79c66cbe97c6ee5ba1a23af6`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 15.9 KB (15873 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10-alpine`

```console
$ docker pull chronograf@sha256:b4cd9a0e90f7b5af40fadb67b9c1b9d72522316456d6b58428ae3e3534fa9b40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:d73b93f7cef1f02ae244964898627538904fd6ae65ca94bb55f5997ea16e343a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36361089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ffb216d4bda8b42da0dfa48c243db50ccf424754ccfb9f8d0fff8c54a229f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:16:57 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 19:17:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:03 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d0b430127862f02e871c296054998ef40b26a469b15eaae2018b23d2f6d22d`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8526706d0ae0ec8d1772520d6d093c4b9cea9cba72cd63ee4d4e7f83292b86`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 293.8 KB (293839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e040aec9df10a353cd84090cd082c07aa2ab66ce42934e0c443eef25dce6705a`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 32.2 MB (32188860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3389750953ff8e626b7f36363878efecf575957dfaf9cd4b1cae9ab0666407b`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c5a2cc4df0e2e04a74b498986e38001cf5ee8d9efe1116ed71ae559c1ffbce`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326912d7e0da03ea6a5dfb9b4dd064fdc70c3bed680e5947e17be4149f775404`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:13d24eb02dff4f6c73c9599a678533f74f5d7fae1c0c1e6e27799b4b57a9f5ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 KB (251939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df16e5befe3dc11b81406754dedc3afff2f5d6223bb47447baf986ece658ba28`

```dockerfile
```

-	Layers:
	-	`sha256:914a46ae8fcfcb42e7a11b859b87637f427f618a6e0164b8fa82fc0adf8b6057`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 234.4 KB (234433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f68adfe934afe58bd6ac08cb1efb15365726433d82eb8cc992e3b4064e93690`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9`

```console
$ docker pull chronograf@sha256:3f54e367506f6809bb60be7fddc78e2b25f9abbd706b910d0b3a033c5c8369d4
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
$ docker pull chronograf@sha256:bda5aade6abcc2d1ff66ae12c3e7b5397b538c993d17c189b07d09bf167c3bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84844703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca2ef134e67047e7abb7f97d74a1bf171f8a4439ad7cbacbd918480d198944b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 24 Nov 2026 04:39:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:39:25 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:39:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:39:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:39:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ec56dd893cee1b9c88048d28a885301f567c075d58e949d250c6d252c581b6`  
		Last Modified: Tue, 24 Nov 2026 04:39:36 GMT  
		Size: 7.7 MB (7704273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692e11b0e86ae446e6605d07031852ca869062b7d825a549434447254a01857b`  
		Last Modified: Tue, 24 Nov 2026 04:39:37 GMT  
		Size: 48.9 MB (48868016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7b6daf516bb30844294c23867a4a2c41a3c81584e93ce643d6488fbce346ee`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ad79af3b47f1b0718d1fc29bb245ee2d4789fbc9ace40439572d56c19620e4`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b770210b64eddb14abbaf9573a128e813d74d0e8ba4f60a8f88f9ae4aa64d6`  
		Last Modified: Tue, 24 Nov 2026 04:39:36 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:29978d629de5e64469b842fa67cf8236ee708726173606435777ba8a7a1920bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7319561eb658993f8cb24eb409b4846bda9ba2226be9fb74abddcef0cee5f3fb`

```dockerfile
```

-	Layers:
	-	`sha256:0549827ca9478e371811b24131e615e48b5add2aa2d1f7471ba74da5d5bf44c8`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 2.9 MB (2859550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10216490fc98d758d235a0974053bfb2cca8cba4a2cb12a129594df7a1838004`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:9b739a0180c0a3e7f92357de1fa8d8c504e8cb61b5365441ee595ccaf2539644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76637054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117c07a479e6d290fbfd16c87fe0f3592d40aa0a86df9a7bc275ffccd64e3667`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 24 Nov 2026 05:16:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 05:16:19 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 05:16:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:16:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:16:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dbe4636f037e07987ed4c9269c75a4aa8678e0b031a1905bc2239bdd57cdf136`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 24.0 MB (23961330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea8159fa902ac08e7003fe1863393c59d0848589ce35a3bc30977baede647ad`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 6.3 MB (6331771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bf46a1b44e3d4a1490b7c3b06574137b4357affe62aeb25a71ec24911ddf40`  
		Last Modified: Tue, 24 Nov 2026 05:16:31 GMT  
		Size: 46.3 MB (46319492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e586ee6eff5c963883419b7299f8d755074b9de47bb0bbdd3c71ad17142e181`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4abc0ddbbbe0b8da980cf0b81703e0fc311dde6c4ef9d2fbc9059dbf74d42d`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0c2df1fe79fc622e97d3a8ee752f2137597d2925c1cc7c943b218e5a12db53`  
		Last Modified: Tue, 24 Nov 2026 05:16:31 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:6a6ebaf3a8e73c1adbceccc886a1e375de890103e5cd39961c4a32ab1a378e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc96e15397f29ba6bed9f036e9899182117ef65f6874a87d7b528931ce3f6952`

```dockerfile
```

-	Layers:
	-	`sha256:cce8b5ac8c343b5203ae085c8bb266bc270e9dda025ab902403cc902b0332ded`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 2.9 MB (2861839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c9fc03d136054810f5fb5604f010ea6ad00cdcdaee4bbb9d195987f43c050eb`  
		Last Modified: Tue, 24 Nov 2026 05:16:30 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7a1ffa727b0f6ccc4750e456143084c1a3426d3bd825953edc99772213907d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81693398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3161c24bc001fe514c108e9704ece0164a401334e830a989c3e1591c6377b10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:42 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 24 Nov 2026 04:43:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:43:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:43:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:43:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:43:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612382e2fcd9a53dca72119213826c57c8ac0e15670f48f847d32a47fc12ac0e`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 7.5 MB (7515242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711fbf3e46a0055ec9aa1206925b7fb157c25781c2fef4a94a9a630315a4a4e5`  
		Last Modified: Tue, 24 Nov 2026 04:44:02 GMT  
		Size: 46.0 MB (46009386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d157684855a2ba6500248aad8d126dc21a7dacc11ed043cfc22081a045120752`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359b215412904d00c28e30631f7762d315cc7ea0b5bdbebde338772c42c9fa2`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4486cfa3036fcd7087780e29d2488e1c5b019b09115d57175ed0140542e30781`  
		Last Modified: Tue, 24 Nov 2026 04:44:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:117755ab309ab1157fb63b20d8c5a6cad62a694c1e619d5025b86d50dc298760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c479253d5e1fb869a92bf6465be21741e104a0ec070e4275b686a6ef0cf42b`

```dockerfile
```

-	Layers:
	-	`sha256:a636cf7a7bd7b1affbe55faaa6ae02eee77d06dead0bbc79173feb92841289ec`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 2.9 MB (2859811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f40133a5ee2abb52f6b14e1cb4708ab293b401b79c66cbe97c6ee5ba1a23af6`  
		Last Modified: Tue, 24 Nov 2026 04:44:00 GMT  
		Size: 15.9 KB (15873 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.10.9-alpine`

```console
$ docker pull chronograf@sha256:b4cd9a0e90f7b5af40fadb67b9c1b9d72522316456d6b58428ae3e3534fa9b40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.10.9-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:d73b93f7cef1f02ae244964898627538904fd6ae65ca94bb55f5997ea16e343a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36361089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ffb216d4bda8b42da0dfa48c243db50ccf424754ccfb9f8d0fff8c54a229f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:16:57 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Thu, 05 Nov 2026 19:17:03 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:03 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d0b430127862f02e871c296054998ef40b26a469b15eaae2018b23d2f6d22d`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8526706d0ae0ec8d1772520d6d093c4b9cea9cba72cd63ee4d4e7f83292b86`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 293.8 KB (293839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e040aec9df10a353cd84090cd082c07aa2ab66ce42934e0c443eef25dce6705a`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 32.2 MB (32188860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3389750953ff8e626b7f36363878efecf575957dfaf9cd4b1cae9ab0666407b`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c5a2cc4df0e2e04a74b498986e38001cf5ee8d9efe1116ed71ae559c1ffbce`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326912d7e0da03ea6a5dfb9b4dd064fdc70c3bed680e5947e17be4149f775404`  
		Last Modified: Thu, 05 Nov 2026 19:17:13 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:13d24eb02dff4f6c73c9599a678533f74f5d7fae1c0c1e6e27799b4b57a9f5ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 KB (251939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df16e5befe3dc11b81406754dedc3afff2f5d6223bb47447baf986ece658ba28`

```dockerfile
```

-	Layers:
	-	`sha256:914a46ae8fcfcb42e7a11b859b87637f427f618a6e0164b8fa82fc0adf8b6057`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 234.4 KB (234433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f68adfe934afe58bd6ac08cb1efb15365726433d82eb8cc992e3b4064e93690`  
		Last Modified: Thu, 05 Nov 2026 19:17:12 GMT  
		Size: 17.5 KB (17506 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11`

```console
$ docker pull chronograf@sha256:c6312948e367e0c189cfbd0ac161fb9286755cb644fc796b74e16120efe91e44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:74b2bddf7cea9c6fb1d24800b0f631944e993b8f53f479dd3846d3abdfead5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (97024549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69caff4ad0ac51281560d2c0b1e6042b5b96cbd75e07cc68360a4e2bd2cc3ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:18:44 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:18:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:18:51 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:18:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:18:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72da6bff2bf3dae3e70e86eefd8750bffe190112791bf7d4564553ff2adf1df9`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 7.7 MB (7704268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b22d21034498aa265c68f7c23c7c8cc61956971061e98434e9c4803074f5142`  
		Last Modified: Thu, 26 Nov 2026 01:19:07 GMT  
		Size: 61.0 MB (61047849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a749d207fc253da1276440d17a9972d0c1f96064ca843a5f938095a7098691ec`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbea1920184f65f40a01e89874bcd763f2c1451af5ba18fc98bbc93bb7e9a71`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7ced5677ad3a05da5bad0f6897619d92d09691faae6edf19fa59868433831c`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:b18f4e2f7ab3c40ce01b8d0313315fbe289e37a53556a6357d4245d21494d415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a2791bcb00ad2a25a205e2c070ba033644888bf88f49be6f892b9b08150733`

```dockerfile
```

-	Layers:
	-	`sha256:cf542f46c8b801969726a2cf4aed8de1bba922d3ac26d21e3546ed3eb3aac6d4`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 2.9 MB (2878887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a12839cff2cc547635c4445cb46819395ccb3ac90716c164a66e5bde076dbd`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:fcb0fa157ccaffbc121952695904336d92e9d5018fd0227fb47d0561276ee548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93673147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e294da3a7efb5fef40198556d53d3df1ca3d94ae6dfd24d8bb8d7bc1e1f0728f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:18:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:18:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:18:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:18:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:18:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccf50dcd96652e6c1c3dce247c9cdf39f845ba2592060faed5d8dcac850d633`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 7.5 MB (7515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fadd0011deaac9883f90ad2d1910ac322889e070f71ff573858edda92e97dce`  
		Last Modified: Thu, 26 Nov 2026 01:18:39 GMT  
		Size: 58.0 MB (57989200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87a05e367e464ae2a63ab8f6b354053bb2682c6673552a27df94f4515f752f6`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64e7db823b4537fdd999080991eb85eed31f92bce20f735b6bf89bcf4131dca`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153bce12ddb1d5ce918a3da0488302cffd01e57b956caf45277d963e38994065`  
		Last Modified: Thu, 26 Nov 2026 01:18:38 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:e850d0dc1e302f24178901d3e9f6e31c0857bf2d5abb53a33377894b6a8dda01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df6750a2763f87c2f338bc51ef92b6d78466b2ea635a4520d276caf8b4cec61b`

```dockerfile
```

-	Layers:
	-	`sha256:16c3f22c80fcc08cf83d5fa7c0bfdcc07bd9fa9ff6108a5f350d57209c304dc7`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 2.9 MB (2878101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91ee24c758c8dc48339abe382e5226c010a616c9c5de1c0605e934fdf62a77ac`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:6c336668d10159a3d4431ee99b96a256eb71023859ebf41d18f813086cbe86c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:1a8aa044b5cffc5471b68f89ce1cbe57db6fd30b67f8dcb2b65550e11605a5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66244813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4953460b78fa25ec27dae5f1a379b39ad94412431c9dd9478ff6025fc9d8b8f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:19:12 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:19:13 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:19:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:19:20 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:19:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:19:20 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6af22584cd1b9dcf67341a90e4cf1c48e47ad3a1613a68b0a6d1dc12508fd5`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d3269fc557ff669140006bccd41e158177ba45345c29699b22237497d48816`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 293.9 KB (293858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80589b471cee029b40bae9ee9cd76017a99500b490efe7326c78a2584063d97c`  
		Last Modified: Thu, 26 Nov 2026 01:19:35 GMT  
		Size: 62.1 MB (62072560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728bf3d96a2bfd44b3173cbc478fa9c07afade00a75641b675755932f999e99e`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdeda14b4fd32e78c15013fe334b396ce63b6f92d8a0f8138a5b4625de1b012b`  
		Last Modified: Thu, 26 Nov 2026 01:19:34 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96803b24b122e427921c6379ffcaa6ee6b412fbabf056b277e0de68ed1598c55`  
		Last Modified: Thu, 26 Nov 2026 01:19:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:50e5ffee8a4f96ecca21f48709e3d03fbbc8c734a0dd72680c97d14129b7177d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 KB (271534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2472bdf037a0f82a541dc6448955c90afad9e4dd218d688ab62a6297db4dc04`

```dockerfile
```

-	Layers:
	-	`sha256:815df22a58e956e189936559976f3e0372d621edb6aaf36454cd6a6dc7a68056`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 253.8 KB (253770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a23e48958671cc375d1cb44c9e61965b392b55d95e9eb18db4d6c92834577bf`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.8`

```console
$ docker pull chronograf@sha256:c6312948e367e0c189cfbd0ac161fb9286755cb644fc796b74e16120efe91e44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.8` - linux; amd64

```console
$ docker pull chronograf@sha256:74b2bddf7cea9c6fb1d24800b0f631944e993b8f53f479dd3846d3abdfead5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (97024549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69caff4ad0ac51281560d2c0b1e6042b5b96cbd75e07cc68360a4e2bd2cc3ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:18:44 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:18:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:18:51 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:18:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:18:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72da6bff2bf3dae3e70e86eefd8750bffe190112791bf7d4564553ff2adf1df9`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 7.7 MB (7704268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b22d21034498aa265c68f7c23c7c8cc61956971061e98434e9c4803074f5142`  
		Last Modified: Thu, 26 Nov 2026 01:19:07 GMT  
		Size: 61.0 MB (61047849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a749d207fc253da1276440d17a9972d0c1f96064ca843a5f938095a7098691ec`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbea1920184f65f40a01e89874bcd763f2c1451af5ba18fc98bbc93bb7e9a71`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7ced5677ad3a05da5bad0f6897619d92d09691faae6edf19fa59868433831c`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.8` - unknown; unknown

```console
$ docker pull chronograf@sha256:b18f4e2f7ab3c40ce01b8d0313315fbe289e37a53556a6357d4245d21494d415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a2791bcb00ad2a25a205e2c070ba033644888bf88f49be6f892b9b08150733`

```dockerfile
```

-	Layers:
	-	`sha256:cf542f46c8b801969726a2cf4aed8de1bba922d3ac26d21e3546ed3eb3aac6d4`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 2.9 MB (2878887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a12839cff2cc547635c4445cb46819395ccb3ac90716c164a66e5bde076dbd`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.8` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:fcb0fa157ccaffbc121952695904336d92e9d5018fd0227fb47d0561276ee548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93673147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e294da3a7efb5fef40198556d53d3df1ca3d94ae6dfd24d8bb8d7bc1e1f0728f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:18:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:18:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:18:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:18:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:18:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccf50dcd96652e6c1c3dce247c9cdf39f845ba2592060faed5d8dcac850d633`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 7.5 MB (7515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fadd0011deaac9883f90ad2d1910ac322889e070f71ff573858edda92e97dce`  
		Last Modified: Thu, 26 Nov 2026 01:18:39 GMT  
		Size: 58.0 MB (57989200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87a05e367e464ae2a63ab8f6b354053bb2682c6673552a27df94f4515f752f6`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64e7db823b4537fdd999080991eb85eed31f92bce20f735b6bf89bcf4131dca`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153bce12ddb1d5ce918a3da0488302cffd01e57b956caf45277d963e38994065`  
		Last Modified: Thu, 26 Nov 2026 01:18:38 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.8` - unknown; unknown

```console
$ docker pull chronograf@sha256:e850d0dc1e302f24178901d3e9f6e31c0857bf2d5abb53a33377894b6a8dda01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df6750a2763f87c2f338bc51ef92b6d78466b2ea635a4520d276caf8b4cec61b`

```dockerfile
```

-	Layers:
	-	`sha256:16c3f22c80fcc08cf83d5fa7c0bfdcc07bd9fa9ff6108a5f350d57209c304dc7`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 2.9 MB (2878101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91ee24c758c8dc48339abe382e5226c010a616c9c5de1c0605e934fdf62a77ac`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.8-alpine`

```console
$ docker pull chronograf@sha256:6c336668d10159a3d4431ee99b96a256eb71023859ebf41d18f813086cbe86c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.8-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:1a8aa044b5cffc5471b68f89ce1cbe57db6fd30b67f8dcb2b65550e11605a5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66244813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4953460b78fa25ec27dae5f1a379b39ad94412431c9dd9478ff6025fc9d8b8f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:19:12 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:19:13 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:19:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:19:20 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:19:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:19:20 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6af22584cd1b9dcf67341a90e4cf1c48e47ad3a1613a68b0a6d1dc12508fd5`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d3269fc557ff669140006bccd41e158177ba45345c29699b22237497d48816`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 293.9 KB (293858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80589b471cee029b40bae9ee9cd76017a99500b490efe7326c78a2584063d97c`  
		Last Modified: Thu, 26 Nov 2026 01:19:35 GMT  
		Size: 62.1 MB (62072560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728bf3d96a2bfd44b3173cbc478fa9c07afade00a75641b675755932f999e99e`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdeda14b4fd32e78c15013fe334b396ce63b6f92d8a0f8138a5b4625de1b012b`  
		Last Modified: Thu, 26 Nov 2026 01:19:34 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96803b24b122e427921c6379ffcaa6ee6b412fbabf056b277e0de68ed1598c55`  
		Last Modified: Thu, 26 Nov 2026 01:19:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.8-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:50e5ffee8a4f96ecca21f48709e3d03fbbc8c734a0dd72680c97d14129b7177d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 KB (271534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2472bdf037a0f82a541dc6448955c90afad9e4dd218d688ab62a6297db4dc04`

```dockerfile
```

-	Layers:
	-	`sha256:815df22a58e956e189936559976f3e0372d621edb6aaf36454cd6a6dc7a68056`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 253.8 KB (253770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a23e48958671cc375d1cb44c9e61965b392b55d95e9eb18db4d6c92834577bf`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:6c336668d10159a3d4431ee99b96a256eb71023859ebf41d18f813086cbe86c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:1a8aa044b5cffc5471b68f89ce1cbe57db6fd30b67f8dcb2b65550e11605a5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66244813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4953460b78fa25ec27dae5f1a379b39ad94412431c9dd9478ff6025fc9d8b8f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 26 Nov 2026 01:19:12 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 26 Nov 2026 01:19:13 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:19:20 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:19:20 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:19:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:19:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:19:20 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6af22584cd1b9dcf67341a90e4cf1c48e47ad3a1613a68b0a6d1dc12508fd5`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d3269fc557ff669140006bccd41e158177ba45345c29699b22237497d48816`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 293.9 KB (293858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80589b471cee029b40bae9ee9cd76017a99500b490efe7326c78a2584063d97c`  
		Last Modified: Thu, 26 Nov 2026 01:19:35 GMT  
		Size: 62.1 MB (62072560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728bf3d96a2bfd44b3173cbc478fa9c07afade00a75641b675755932f999e99e`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 12.2 KB (12235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdeda14b4fd32e78c15013fe334b396ce63b6f92d8a0f8138a5b4625de1b012b`  
		Last Modified: Thu, 26 Nov 2026 01:19:34 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96803b24b122e427921c6379ffcaa6ee6b412fbabf056b277e0de68ed1598c55`  
		Last Modified: Thu, 26 Nov 2026 01:19:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:50e5ffee8a4f96ecca21f48709e3d03fbbc8c734a0dd72680c97d14129b7177d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 KB (271534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2472bdf037a0f82a541dc6448955c90afad9e4dd218d688ab62a6297db4dc04`

```dockerfile
```

-	Layers:
	-	`sha256:815df22a58e956e189936559976f3e0372d621edb6aaf36454cd6a6dc7a68056`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 253.8 KB (253770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a23e48958671cc375d1cb44c9e61965b392b55d95e9eb18db4d6c92834577bf`  
		Last Modified: Thu, 26 Nov 2026 01:19:33 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:c6312948e367e0c189cfbd0ac161fb9286755cb644fc796b74e16120efe91e44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:74b2bddf7cea9c6fb1d24800b0f631944e993b8f53f479dd3846d3abdfead5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (97024549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69caff4ad0ac51281560d2c0b1e6042b5b96cbd75e07cc68360a4e2bd2cc3ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:18:44 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:18:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:18:51 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:18:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:18:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72da6bff2bf3dae3e70e86eefd8750bffe190112791bf7d4564553ff2adf1df9`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 7.7 MB (7704268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b22d21034498aa265c68f7c23c7c8cc61956971061e98434e9c4803074f5142`  
		Last Modified: Thu, 26 Nov 2026 01:19:07 GMT  
		Size: 61.0 MB (61047849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a749d207fc253da1276440d17a9972d0c1f96064ca843a5f938095a7098691ec`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbea1920184f65f40a01e89874bcd763f2c1451af5ba18fc98bbc93bb7e9a71`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7ced5677ad3a05da5bad0f6897619d92d09691faae6edf19fa59868433831c`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:b18f4e2f7ab3c40ce01b8d0313315fbe289e37a53556a6357d4245d21494d415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a2791bcb00ad2a25a205e2c070ba033644888bf88f49be6f892b9b08150733`

```dockerfile
```

-	Layers:
	-	`sha256:cf542f46c8b801969726a2cf4aed8de1bba922d3ac26d21e3546ed3eb3aac6d4`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 2.9 MB (2878887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a12839cff2cc547635c4445cb46819395ccb3ac90716c164a66e5bde076dbd`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:fcb0fa157ccaffbc121952695904336d92e9d5018fd0227fb47d0561276ee548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93673147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e294da3a7efb5fef40198556d53d3df1ca3d94ae6dfd24d8bb8d7bc1e1f0728f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:18:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:18:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:18:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:18:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:18:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccf50dcd96652e6c1c3dce247c9cdf39f845ba2592060faed5d8dcac850d633`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 7.5 MB (7515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fadd0011deaac9883f90ad2d1910ac322889e070f71ff573858edda92e97dce`  
		Last Modified: Thu, 26 Nov 2026 01:18:39 GMT  
		Size: 58.0 MB (57989200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87a05e367e464ae2a63ab8f6b354053bb2682c6673552a27df94f4515f752f6`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64e7db823b4537fdd999080991eb85eed31f92bce20f735b6bf89bcf4131dca`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153bce12ddb1d5ce918a3da0488302cffd01e57b956caf45277d963e38994065`  
		Last Modified: Thu, 26 Nov 2026 01:18:38 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:e850d0dc1e302f24178901d3e9f6e31c0857bf2d5abb53a33377894b6a8dda01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df6750a2763f87c2f338bc51ef92b6d78466b2ea635a4520d276caf8b4cec61b`

```dockerfile
```

-	Layers:
	-	`sha256:16c3f22c80fcc08cf83d5fa7c0bfdcc07bd9fa9ff6108a5f350d57209c304dc7`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 2.9 MB (2878101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91ee24c758c8dc48339abe382e5226c010a616c9c5de1c0605e934fdf62a77ac`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
