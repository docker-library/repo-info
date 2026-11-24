<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.10`](#chronograf110)
-	[`chronograf:1.10-alpine`](#chronograf110-alpine)
-	[`chronograf:1.10.9`](#chronograf1109)
-	[`chronograf:1.10.9-alpine`](#chronograf1109-alpine)
-	[`chronograf:1.11`](#chronograf111)
-	[`chronograf:1.11-alpine`](#chronograf111-alpine)
-	[`chronograf:1.11.7`](#chronograf1117)
-	[`chronograf:1.11.7-alpine`](#chronograf1117-alpine)
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
$ docker pull chronograf@sha256:738efb1e093687e49d4cfcc1e1257adbf52dd1e9b633222baf194297b5af4f80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:4d3dc91d3f4dd62d19dc9554485588168967d2711c73b4982abfb884ec0f4677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96991135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2f64a8864552eec8c56ea023d4c8ecacaffb0e4f86021f32dfdc95f7adba6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Tue, 24 Nov 2026 04:39:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:39:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:39:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:39:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e8280fc88c0012a7d140967086ca838e3af48a75d9a8968f524d9d9505ce56`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 7.7 MB (7704272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6987b19778f6d9bb7b061c387b0163adfd7cb277eec27671b6af1c70afed8cd`  
		Last Modified: Tue, 24 Nov 2026 04:39:50 GMT  
		Size: 61.0 MB (61014429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f67af7da981d1f1b62720769c480554f0130209e7b4579b0b3a97cda96da72`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72cfa724aff7f23131b99aa4ab3e7494268eb62e7a5461c58e7ba478b5cdfcc`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7751d1f0f16ed0d0659ccde65937eb4890d7f780c8424fbf2df3da88e98da2ac`  
		Last Modified: Tue, 24 Nov 2026 04:39:50 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:e779b564bc5a0eabefb25c13447cf51b59328494ce9d3d7b28b6cb4ea9aceaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31071e9aed563c3aad97d8d7f4ce82a8b4e8426fcf9290164299a43e70b2254a`

```dockerfile
```

-	Layers:
	-	`sha256:716e63fbf6b6350422c3aa0d1add003c147af27c9d5fbb98fbeee5c8603bd011`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0de770541f790427095f56b7b1fe887a46b6f805b6f82c7bd3d3c5dc975f1aba`  
		Last Modified: Tue, 24 Nov 2026 04:39:48 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:bef03ff468c09abfaa3c4e3e020658ca51ed05e0b655fcc4041ebd26af6e6e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93644724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067d1a0edd9e98c04944eef67f1290a73c4bbb511f3eb6f29d1de13e85282019`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Tue, 24 Nov 2026 04:43:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:43:58 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:43:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:43:58 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39786331e0019c3926994d9ac1c6c2c389ae597722b020eb049a9e61d22ef7c7`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 7.5 MB (7515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b179215b52e4fba00c3114f336d1f6194f9a91101727c8e692a39ba49877a45`  
		Last Modified: Tue, 24 Nov 2026 04:44:14 GMT  
		Size: 58.0 MB (57960766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9e8cdacf2e3816e54c69f7cfa2fad0d75d6b125131abc9dd1d7c86e07aafe`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fffdbb34e4b0731fcc041a743b576bc8fbbc1c12b1b5d7b3068e2c8ea1d573b`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9dafd9d40acff9bd31f6e74264735c7733c18e5229ddfd09241b394d3e1fc3`  
		Last Modified: Tue, 24 Nov 2026 04:44:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:a757f222aa1c1ad744c3d4b6592fa54fa504fe4eee6955e808251afd9b529d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2fe159919535d901d86ed06f1ccef794e8be79e305a2a8ef1606ce993cadd48`

```dockerfile
```

-	Layers:
	-	`sha256:40966d9914a11988f276ba7ff7a34bc489acb4aa16f99228781ec93d1d555fd2`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 2.9 MB (2877044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b671f5a87f95c3d09fd54c9809041c8c729536d674aaeac90c607ecd975b6e0`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:2aeb1fa854ade074e0921ababfab1bd6077dde00da4e9b1fddd70623d18af266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:0a529f031a63376965580a28f5d7bdfae459484e20f806637df671d9c0cbe01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66211433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fa740f46c075c92f1b32cecc9cd69c04115e5b9174d9a613f297f0d4922692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 19:17:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146676637ed781dfb0bfbed3409d6e207676cf1c054cfd904169845e740271d5`  
		Last Modified: Thu, 05 Nov 2026 19:17:23 GMT  
		Size: 62.0 MB (62039198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80096eafdb90dffa24cfee53e27ce5b8e0ade65f02b1eabf303786c7103e5989`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d464ba74ab32f1c69c64710ae83d9f5137432b96b69522c112dfa0929ad19ad`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8404b83a4e57b7c36cd56123e322208763dc681a3b2f0230795e15c25065c9e`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:85b1101701266273c908b201635dcf545f926deaf1112aa8b635a7f327e95052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090e908771499aebeefdbb47620bb7ac0b484c5c0412a0101f942d27963376ae`

```dockerfile
```

-	Layers:
	-	`sha256:0908f3c2f203a82ce357dc8a24995fc5387c1563aa5da3aaf5c09d22497645d4`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047384138aae8d9e7f3933b7d36fd719041c8ed5462e62b9df74fe4bfe86cf39`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.7`

```console
$ docker pull chronograf@sha256:738efb1e093687e49d4cfcc1e1257adbf52dd1e9b633222baf194297b5af4f80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.7` - linux; amd64

```console
$ docker pull chronograf@sha256:4d3dc91d3f4dd62d19dc9554485588168967d2711c73b4982abfb884ec0f4677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96991135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2f64a8864552eec8c56ea023d4c8ecacaffb0e4f86021f32dfdc95f7adba6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Tue, 24 Nov 2026 04:39:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:39:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:39:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:39:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e8280fc88c0012a7d140967086ca838e3af48a75d9a8968f524d9d9505ce56`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 7.7 MB (7704272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6987b19778f6d9bb7b061c387b0163adfd7cb277eec27671b6af1c70afed8cd`  
		Last Modified: Tue, 24 Nov 2026 04:39:50 GMT  
		Size: 61.0 MB (61014429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f67af7da981d1f1b62720769c480554f0130209e7b4579b0b3a97cda96da72`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72cfa724aff7f23131b99aa4ab3e7494268eb62e7a5461c58e7ba478b5cdfcc`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7751d1f0f16ed0d0659ccde65937eb4890d7f780c8424fbf2df3da88e98da2ac`  
		Last Modified: Tue, 24 Nov 2026 04:39:50 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.7` - unknown; unknown

```console
$ docker pull chronograf@sha256:e779b564bc5a0eabefb25c13447cf51b59328494ce9d3d7b28b6cb4ea9aceaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31071e9aed563c3aad97d8d7f4ce82a8b4e8426fcf9290164299a43e70b2254a`

```dockerfile
```

-	Layers:
	-	`sha256:716e63fbf6b6350422c3aa0d1add003c147af27c9d5fbb98fbeee5c8603bd011`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0de770541f790427095f56b7b1fe887a46b6f805b6f82c7bd3d3c5dc975f1aba`  
		Last Modified: Tue, 24 Nov 2026 04:39:48 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:bef03ff468c09abfaa3c4e3e020658ca51ed05e0b655fcc4041ebd26af6e6e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93644724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067d1a0edd9e98c04944eef67f1290a73c4bbb511f3eb6f29d1de13e85282019`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Tue, 24 Nov 2026 04:43:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:43:58 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:43:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:43:58 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39786331e0019c3926994d9ac1c6c2c389ae597722b020eb049a9e61d22ef7c7`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 7.5 MB (7515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b179215b52e4fba00c3114f336d1f6194f9a91101727c8e692a39ba49877a45`  
		Last Modified: Tue, 24 Nov 2026 04:44:14 GMT  
		Size: 58.0 MB (57960766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9e8cdacf2e3816e54c69f7cfa2fad0d75d6b125131abc9dd1d7c86e07aafe`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fffdbb34e4b0731fcc041a743b576bc8fbbc1c12b1b5d7b3068e2c8ea1d573b`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9dafd9d40acff9bd31f6e74264735c7733c18e5229ddfd09241b394d3e1fc3`  
		Last Modified: Tue, 24 Nov 2026 04:44:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.7` - unknown; unknown

```console
$ docker pull chronograf@sha256:a757f222aa1c1ad744c3d4b6592fa54fa504fe4eee6955e808251afd9b529d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2fe159919535d901d86ed06f1ccef794e8be79e305a2a8ef1606ce993cadd48`

```dockerfile
```

-	Layers:
	-	`sha256:40966d9914a11988f276ba7ff7a34bc489acb4aa16f99228781ec93d1d555fd2`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 2.9 MB (2877044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b671f5a87f95c3d09fd54c9809041c8c729536d674aaeac90c607ecd975b6e0`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.7-alpine`

```console
$ docker pull chronograf@sha256:2aeb1fa854ade074e0921ababfab1bd6077dde00da4e9b1fddd70623d18af266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:0a529f031a63376965580a28f5d7bdfae459484e20f806637df671d9c0cbe01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66211433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fa740f46c075c92f1b32cecc9cd69c04115e5b9174d9a613f297f0d4922692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 19:17:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146676637ed781dfb0bfbed3409d6e207676cf1c054cfd904169845e740271d5`  
		Last Modified: Thu, 05 Nov 2026 19:17:23 GMT  
		Size: 62.0 MB (62039198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80096eafdb90dffa24cfee53e27ce5b8e0ade65f02b1eabf303786c7103e5989`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d464ba74ab32f1c69c64710ae83d9f5137432b96b69522c112dfa0929ad19ad`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8404b83a4e57b7c36cd56123e322208763dc681a3b2f0230795e15c25065c9e`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.7-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:85b1101701266273c908b201635dcf545f926deaf1112aa8b635a7f327e95052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090e908771499aebeefdbb47620bb7ac0b484c5c0412a0101f942d27963376ae`

```dockerfile
```

-	Layers:
	-	`sha256:0908f3c2f203a82ce357dc8a24995fc5387c1563aa5da3aaf5c09d22497645d4`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047384138aae8d9e7f3933b7d36fd719041c8ed5462e62b9df74fe4bfe86cf39`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:2aeb1fa854ade074e0921ababfab1bd6077dde00da4e9b1fddd70623d18af266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:0a529f031a63376965580a28f5d7bdfae459484e20f806637df671d9c0cbe01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66211433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fa740f46c075c92f1b32cecc9cd69c04115e5b9174d9a613f297f0d4922692`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:03 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:17:03 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 19:17:09 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 19:17:09 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 19:17:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:17:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:09 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a283f45868feeae563b34b2046ad3956d7e0f7c1f00280d305e096fdf0258e`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4d511e6f26babe2884595be43c448bd606f436b013a8a0e485c3e6d3063aee`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 293.8 KB (293835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146676637ed781dfb0bfbed3409d6e207676cf1c054cfd904169845e740271d5`  
		Last Modified: Thu, 05 Nov 2026 19:17:23 GMT  
		Size: 62.0 MB (62039198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80096eafdb90dffa24cfee53e27ce5b8e0ade65f02b1eabf303786c7103e5989`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d464ba74ab32f1c69c64710ae83d9f5137432b96b69522c112dfa0929ad19ad`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8404b83a4e57b7c36cd56123e322208763dc681a3b2f0230795e15c25065c9e`  
		Last Modified: Thu, 05 Nov 2026 19:17:22 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:85b1101701266273c908b201635dcf545f926deaf1112aa8b635a7f327e95052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 KB (270477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090e908771499aebeefdbb47620bb7ac0b484c5c0412a0101f942d27963376ae`

```dockerfile
```

-	Layers:
	-	`sha256:0908f3c2f203a82ce357dc8a24995fc5387c1563aa5da3aaf5c09d22497645d4`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 252.7 KB (252713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047384138aae8d9e7f3933b7d36fd719041c8ed5462e62b9df74fe4bfe86cf39`  
		Last Modified: Thu, 05 Nov 2026 19:17:21 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:738efb1e093687e49d4cfcc1e1257adbf52dd1e9b633222baf194297b5af4f80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:4d3dc91d3f4dd62d19dc9554485588168967d2711c73b4982abfb884ec0f4677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96991135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2f64a8864552eec8c56ea023d4c8ecacaffb0e4f86021f32dfdc95f7adba6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:28 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Tue, 24 Nov 2026 04:39:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:39:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:39:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:39:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:39:35 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e8280fc88c0012a7d140967086ca838e3af48a75d9a8968f524d9d9505ce56`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 7.7 MB (7704272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6987b19778f6d9bb7b061c387b0163adfd7cb277eec27671b6af1c70afed8cd`  
		Last Modified: Tue, 24 Nov 2026 04:39:50 GMT  
		Size: 61.0 MB (61014429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f67af7da981d1f1b62720769c480554f0130209e7b4579b0b3a97cda96da72`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72cfa724aff7f23131b99aa4ab3e7494268eb62e7a5461c58e7ba478b5cdfcc`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7751d1f0f16ed0d0659ccde65937eb4890d7f780c8424fbf2df3da88e98da2ac`  
		Last Modified: Tue, 24 Nov 2026 04:39:50 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:e779b564bc5a0eabefb25c13447cf51b59328494ce9d3d7b28b6cb4ea9aceaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31071e9aed563c3aad97d8d7f4ce82a8b4e8426fcf9290164299a43e70b2254a`

```dockerfile
```

-	Layers:
	-	`sha256:716e63fbf6b6350422c3aa0d1add003c147af27c9d5fbb98fbeee5c8603bd011`  
		Last Modified: Tue, 24 Nov 2026 04:39:49 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0de770541f790427095f56b7b1fe887a46b6f805b6f82c7bd3d3c5dc975f1aba`  
		Last Modified: Tue, 24 Nov 2026 04:39:48 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:bef03ff468c09abfaa3c4e3e020658ca51ed05e0b655fcc4041ebd26af6e6e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93644724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067d1a0edd9e98c04944eef67f1290a73c4bbb511f3eb6f29d1de13e85282019`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:50 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Tue, 24 Nov 2026 04:43:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 24 Nov 2026 04:43:58 GMT
VOLUME [/var/lib/chronograf]
# Tue, 24 Nov 2026 04:43:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:43:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:43:58 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39786331e0019c3926994d9ac1c6c2c389ae597722b020eb049a9e61d22ef7c7`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 7.5 MB (7515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b179215b52e4fba00c3114f336d1f6194f9a91101727c8e692a39ba49877a45`  
		Last Modified: Tue, 24 Nov 2026 04:44:14 GMT  
		Size: 58.0 MB (57960766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed9e8cdacf2e3816e54c69f7cfa2fad0d75d6b125131abc9dd1d7c86e07aafe`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fffdbb34e4b0731fcc041a743b576bc8fbbc1c12b1b5d7b3068e2c8ea1d573b`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9dafd9d40acff9bd31f6e74264735c7733c18e5229ddfd09241b394d3e1fc3`  
		Last Modified: Tue, 24 Nov 2026 04:44:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:a757f222aa1c1ad744c3d4b6592fa54fa504fe4eee6955e808251afd9b529d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2fe159919535d901d86ed06f1ccef794e8be79e305a2a8ef1606ce993cadd48`

```dockerfile
```

-	Layers:
	-	`sha256:40966d9914a11988f276ba7ff7a34bc489acb4aa16f99228781ec93d1d555fd2`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 2.9 MB (2877044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b671f5a87f95c3d09fd54c9809041c8c729536d674aaeac90c607ecd975b6e0`  
		Last Modified: Tue, 24 Nov 2026 04:44:12 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
