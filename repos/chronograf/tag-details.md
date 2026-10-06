<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.10`](#chronograf110)
-	[`chronograf:1.10-alpine`](#chronograf110-alpine)
-	[`chronograf:1.10.9`](#chronograf1109)
-	[`chronograf:1.10.9-alpine`](#chronograf1109-alpine)
-	[`chronograf:1.11`](#chronograf111)
-	[`chronograf:1.11-alpine`](#chronograf111-alpine)
-	[`chronograf:1.11.5`](#chronograf1115)
-	[`chronograf:1.11.5-alpine`](#chronograf1115-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.10`

```console
$ docker pull chronograf@sha256:dcf1d768c7fc92cd80d9136212c4205f9befb2d76042433bae07c77f29ebfe88
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
$ docker pull chronograf@sha256:fd1d56e092d7a30508e1f0667a9f0f9af7b16b7a1190d59351e0f8c874167031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84850839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0997122991271d536d3cee26c0b05ce39df5a82d17a2d9c251587aae43e8a404`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 06 Oct 2026 01:41:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:41:32 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:41:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0144fa7868ca13b99b23c57b5073b0275d8bfe6feb0e2bc58640208ae642125a`  
		Last Modified: Tue, 06 Oct 2026 01:41:43 GMT  
		Size: 7.7 MB (7709077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99ba7da58e705abc5264533c3f6c0297b2816026875c24a88fd77221f86c89c`  
		Last Modified: Tue, 06 Oct 2026 01:41:44 GMT  
		Size: 48.9 MB (48867960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bb47c95b607b53f77fd21af8ec4f3361cdb78cd5d12fa0f39b4d696d5a3b7d`  
		Last Modified: Tue, 06 Oct 2026 01:41:42 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74f1a8391dee4da5be9c72897c766917405089ae5225de095e1ca768514d47b`  
		Last Modified: Tue, 06 Oct 2026 01:41:42 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3e45dcb6c9bdbbbf7e3f131697c2adda41cdebd77171793bef6fe2bec88c01`  
		Last Modified: Tue, 06 Oct 2026 01:41:44 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:0c2caba87814f58046cd86e8d8808417c125dd2046403f73bb1073d59017f146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9517d0e8f50ab71897895309a95bef4128df744a375dfde7af6d9c9553a0b1`

```dockerfile
```

-	Layers:
	-	`sha256:031e9e0dd0d1bde5f24c85cc216eb4d75d25cbf8bd2cdca55e2d9225d2e4d7b6`  
		Last Modified: Tue, 06 Oct 2026 01:41:42 GMT  
		Size: 2.9 MB (2860763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b7357829d1aeab23bc7bbfb489170b1c3a847e24e4568b7184f2f508f5f0573`  
		Last Modified: Tue, 06 Oct 2026 01:41:42 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:2b5524a62cf3fe3229b6e3d19af952bfda1f8062e3dc557e423c68b4ba1cd9fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76633684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d452c900158aa31a568637cc3dd1f0e164bc2cbd401068fc2cf6c80bda154e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:24:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 06 Oct 2026 02:25:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 02:25:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 02:25:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:25:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8efd64dc2134ab4289dc5e092a5ee14bb96230321c24feece7dfdfe82196d6`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 6.3 MB (6333192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab326285fc9f98aae072e9a47d738bb858a8345e7db5ca6636f85ef379fa51c9`  
		Last Modified: Tue, 06 Oct 2026 02:25:17 GMT  
		Size: 46.3 MB (46319449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7c2f6ad3d1591e85d574e2c9af0d2039794d4b2d2fea2a3a68aba967325f75`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b1250c01ba4ae330e6b82dea19ec9f9a528b74981295b67cabed22cccb17f5`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5921d380648cd7a0629c38bed4d209e4e206222176e79c5e8639948f4b858056`  
		Last Modified: Tue, 06 Oct 2026 02:25:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:5d650befaa81635a604792973f3b106f73a11db0105d3218dbaa2fe0e18d1ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2878908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d67b13f9ce4e513be844f63bcdd13fd423ccb65937b2bd469737839ae70ea33`

```dockerfile
```

-	Layers:
	-	`sha256:6a47dcd469d995911174a29151dcf58f02708ee835215ea993ffed18c9bfb762`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 2.9 MB (2863052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a532330131689af8b889aa5bb5f8f3358cced731ba3722cca286d71bcdbce86`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9e1a4fbe9b0c7798f75219425bb389afb9611195769044ffd53c080187d3b8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81689660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0afd0e0186e8177019d007b47f4ac430487c27732d852933c18308e58fe61c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 06 Oct 2026 01:44:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:44:46 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:44:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:44:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640f0dad2c9a2c697d661dbae2e0f483b698b7a7a27128dd2c80c8cf09036b06`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 7.5 MB (7518403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382ddfb8e92da44b279553a3c64248f023753815e62b6f52e313f7adbca0e0d`  
		Last Modified: Tue, 06 Oct 2026 01:44:58 GMT  
		Size: 46.0 MB (46009618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46baa7c3d68a03fec6149ae86b4c64a6f2424810567035f13b92a1d7d7cb008e`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60927ec80c0f6c33e7b0f1edbf20e3bb9600214eda20c1de4890cff1629add9`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b980bf2ccae7c5735fb854b2a8f128daeb2b9bf96f42accdfe12db9d9b0efac2`  
		Last Modified: Tue, 06 Oct 2026 01:44:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10` - unknown; unknown

```console
$ docker pull chronograf@sha256:c881beec3d5cbaafeb38e45b558f488fbe0fc65eafffd6dc9ba792de1e8f27fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d95ff29bc93da6d90069d48ff8e488e55feaff49d2b815f4ef8a5e28378d1e`

```dockerfile
```

-	Layers:
	-	`sha256:35af9c29d35101fa39e2e08f8fab3aa04f8e785494d105a8726f7d97ceede2ca`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 2.9 MB (2861024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd0961c738186fa292cfe600d4e80c1d9dfa5442f1fceccfe5dbaf56e51fa36e`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 15.9 KB (15873 bytes)  
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
$ docker pull chronograf@sha256:dcf1d768c7fc92cd80d9136212c4205f9befb2d76042433bae07c77f29ebfe88
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
$ docker pull chronograf@sha256:fd1d56e092d7a30508e1f0667a9f0f9af7b16b7a1190d59351e0f8c874167031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84850839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0997122991271d536d3cee26c0b05ce39df5a82d17a2d9c251587aae43e8a404`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 06 Oct 2026 01:41:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:41:32 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:41:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:41:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0144fa7868ca13b99b23c57b5073b0275d8bfe6feb0e2bc58640208ae642125a`  
		Last Modified: Tue, 06 Oct 2026 01:41:43 GMT  
		Size: 7.7 MB (7709077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99ba7da58e705abc5264533c3f6c0297b2816026875c24a88fd77221f86c89c`  
		Last Modified: Tue, 06 Oct 2026 01:41:44 GMT  
		Size: 48.9 MB (48867960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bb47c95b607b53f77fd21af8ec4f3361cdb78cd5d12fa0f39b4d696d5a3b7d`  
		Last Modified: Tue, 06 Oct 2026 01:41:42 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74f1a8391dee4da5be9c72897c766917405089ae5225de095e1ca768514d47b`  
		Last Modified: Tue, 06 Oct 2026 01:41:42 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3e45dcb6c9bdbbbf7e3f131697c2adda41cdebd77171793bef6fe2bec88c01`  
		Last Modified: Tue, 06 Oct 2026 01:41:44 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:0c2caba87814f58046cd86e8d8808417c125dd2046403f73bb1073d59017f146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9517d0e8f50ab71897895309a95bef4128df744a375dfde7af6d9c9553a0b1`

```dockerfile
```

-	Layers:
	-	`sha256:031e9e0dd0d1bde5f24c85cc216eb4d75d25cbf8bd2cdca55e2d9225d2e4d7b6`  
		Last Modified: Tue, 06 Oct 2026 01:41:42 GMT  
		Size: 2.9 MB (2860763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b7357829d1aeab23bc7bbfb489170b1c3a847e24e4568b7184f2f508f5f0573`  
		Last Modified: Tue, 06 Oct 2026 01:41:42 GMT  
		Size: 15.8 KB (15779 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:2b5524a62cf3fe3229b6e3d19af952bfda1f8062e3dc557e423c68b4ba1cd9fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76633684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d452c900158aa31a568637cc3dd1f0e164bc2cbd401068fc2cf6c80bda154e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:24:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 06 Oct 2026 02:25:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 02:25:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 02:25:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 02:25:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:25:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8efd64dc2134ab4289dc5e092a5ee14bb96230321c24feece7dfdfe82196d6`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 6.3 MB (6333192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab326285fc9f98aae072e9a47d738bb858a8345e7db5ca6636f85ef379fa51c9`  
		Last Modified: Tue, 06 Oct 2026 02:25:17 GMT  
		Size: 46.3 MB (46319449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7c2f6ad3d1591e85d574e2c9af0d2039794d4b2d2fea2a3a68aba967325f75`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b1250c01ba4ae330e6b82dea19ec9f9a528b74981295b67cabed22cccb17f5`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5921d380648cd7a0629c38bed4d209e4e206222176e79c5e8639948f4b858056`  
		Last Modified: Tue, 06 Oct 2026 02:25:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:5d650befaa81635a604792973f3b106f73a11db0105d3218dbaa2fe0e18d1ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2878908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d67b13f9ce4e513be844f63bcdd13fd423ccb65937b2bd469737839ae70ea33`

```dockerfile
```

-	Layers:
	-	`sha256:6a47dcd469d995911174a29151dcf58f02708ee835215ea993ffed18c9bfb762`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 2.9 MB (2863052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a532330131689af8b889aa5bb5f8f3358cced731ba3722cca286d71bcdbce86`  
		Last Modified: Tue, 06 Oct 2026 02:25:15 GMT  
		Size: 15.9 KB (15856 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.10.9` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9e1a4fbe9b0c7798f75219425bb389afb9611195769044ffd53c080187d3b8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81689660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0afd0e0186e8177019d007b47f4ac430487c27732d852933c18308e58fe61c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:41 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
ENV CHRONOGRAF_VERSION=1.10.9
# Tue, 06 Oct 2026 01:44:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:44:46 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:44:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:44:46 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640f0dad2c9a2c697d661dbae2e0f483b698b7a7a27128dd2c80c8cf09036b06`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 7.5 MB (7518403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382ddfb8e92da44b279553a3c64248f023753815e62b6f52e313f7adbca0e0d`  
		Last Modified: Tue, 06 Oct 2026 01:44:58 GMT  
		Size: 46.0 MB (46009618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46baa7c3d68a03fec6149ae86b4c64a6f2424810567035f13b92a1d7d7cb008e`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60927ec80c0f6c33e7b0f1edbf20e3bb9600214eda20c1de4890cff1629add9`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b980bf2ccae7c5735fb854b2a8f128daeb2b9bf96f42accdfe12db9d9b0efac2`  
		Last Modified: Tue, 06 Oct 2026 01:44:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.10.9` - unknown; unknown

```console
$ docker pull chronograf@sha256:c881beec3d5cbaafeb38e45b558f488fbe0fc65eafffd6dc9ba792de1e8f27fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2876897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d95ff29bc93da6d90069d48ff8e488e55feaff49d2b815f4ef8a5e28378d1e`

```dockerfile
```

-	Layers:
	-	`sha256:35af9c29d35101fa39e2e08f8fab3aa04f8e785494d105a8726f7d97ceede2ca`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 2.9 MB (2861024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd0961c738186fa292cfe600d4e80c1d9dfa5442f1fceccfe5dbaf56e51fa36e`  
		Last Modified: Tue, 06 Oct 2026 01:44:57 GMT  
		Size: 15.9 KB (15873 bytes)  
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
$ docker pull chronograf@sha256:91d2f47bc24b266c316550ae8463c3bd68f45001e700d231956cda7b41ec725a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:3b94b0ba12c477b69fd9343430841158bd1355cba76a5bf357937ff25b3ae723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96951854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214db7b6a2b6faa97f465bae307b743b586e858825a9f93ca603709e22a05246`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 06 Oct 2026 01:41:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:41:33 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:41:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25026b52035d407861e471a4966c2fef5b62156db1e986b88e95cd3b895e12e5`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 7.7 MB (7709057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578574f30e56f70355cd602f1221a7b706f0cb98b7d7cfce4644ee367e7ed734`  
		Last Modified: Tue, 06 Oct 2026 01:41:48 GMT  
		Size: 61.0 MB (60968996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ebbc5c5a78b38cd8366ba54624e3f1573802bfbc22f6ba21eab93ca7b031aa`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fdaebd70b3b1afe7b3d600a93c31a1ae44701589d87136c1c6606dbc6cbf68a`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed5a1dd90213ee7a74c397d8cfb11ac747c91e28717befcdd8890d77ed3e45`  
		Last Modified: Tue, 06 Oct 2026 01:41:47 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:cdc0976cb804cade8c4e1ec9beef40154a6f4cd1d52aa5da82773773a19925b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f31e9e7598739eb608bfbcfc7506c3db37a2641abc711506bec60eba4f531e`

```dockerfile
```

-	Layers:
	-	`sha256:f5d42ccb88b854cd2a5f297a484a619fac9c665059d3fd8e91e13cf9de1285ce`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa3366ac315be6f9588f8e2dccc91d4ba2eb88a09bed3543d390a90aecb5e56`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:0f6aa2e0619cd7d5aa3ef2ddcbb164b3b6766679d348c376b7f3bded27163a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93589696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1feb4ed6719c98e3b92aa500facc634f542582c5a9e4c7ae967420f9469d9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 06 Oct 2026 01:44:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:44:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:44:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:44:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66cba48e6c7fa6647debdf3777186c8b8a395c8cf0eb2c58ad09bb5b427d21f0`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 7.5 MB (7518433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ae03161f22eafb2cd8a0eda1cf6e6a64fd38cd35a9f6757858127a04e2ce19`  
		Last Modified: Tue, 06 Oct 2026 01:45:04 GMT  
		Size: 57.9 MB (57909619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23608d1c4a8bb79b5d6630ca5e3ca058e73b9b76b4f793f1249ee9017d60df9b`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e2ec08882dd0ce0ad74b7503dc738ab16b4b96a3434bcf8be0e51de9d7938b`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db6f0112dd01f603b15b9744297eb82ce88ec7b8e4d1710bb29b2a74472c0d7`  
		Last Modified: Tue, 06 Oct 2026 01:45:04 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:173afc8d05f09b0b80f3908d7b6cf1b9623c57b8cdcdab340bc2a4a05fc61bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d444a58cae4296943b2d4dd6475a3fcb510b92312d1b4ae9663b960174c5f9`

```dockerfile
```

-	Layers:
	-	`sha256:120db5b53e03053da7136a558cf0faad5fc30fd35db45ae93ff8f1666cff6820`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a1856bcd9d562a23dde701201cba97b32122e98433ca0515cbcbc3210eef121`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11-alpine`

```console
$ docker pull chronograf@sha256:e5df978c5b0590a543c3494a6b89ec2976c7d204243f94a2b6f39c449f57a3fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5ff92461e0484536e809d4c123bb2239c1ff2b401e291ec7eb76ad21164e28df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66160627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7c26504244453a8adcabf30e3a3a6da8a31f4961ea11ebd7f566c1b9c5eaa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:47:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:47:51 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:47:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:47:56 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:47:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:47:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721b3dbc726778d574440f78d681d7345e322ee039b9e8dee5408c75a4209f61`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2896334095505ad18e90c71517143758129ce213eabdc60bdd0fbd79aad01236`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 296.7 KB (296651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23cf772b6a98ae64a050b6dabf808924339c3b74020f8a7b926f9538e18b33c`  
		Last Modified: Tue, 22 Sep 2026 18:48:10 GMT  
		Size: 62.0 MB (61989500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b30e64e2c4e4a5cf2bf1b96eb255eb101acaed9d939a415d2169b221b58fe1d`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc45c001416d64e916262251fab65fd3c68dcbf1050c0b89278dc13e2a76668`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281c5448f40396f6237e658353a90d4883b5c3ce8257dd4695faa19839c0a06`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:8bc169bf72ec0a6f7e154ae9993ff36ec6f575196e39a9d1c3c7449d9c6669e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3669b93a06e3e805ecea883e3abf6c0f072d9a6488a02594a0053e1aa316bc9a`

```dockerfile
```

-	Layers:
	-	`sha256:946e882fc6e31ab6c34d0b91fea3fe8e0a3610065ea015f7eece408adebe0890`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0f9d8967ff3b872b7725afc7f5d543f61912a09a38e823d61b09d4f4484838`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.5`

```console
$ docker pull chronograf@sha256:91d2f47bc24b266c316550ae8463c3bd68f45001e700d231956cda7b41ec725a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.5` - linux; amd64

```console
$ docker pull chronograf@sha256:3b94b0ba12c477b69fd9343430841158bd1355cba76a5bf357937ff25b3ae723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96951854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214db7b6a2b6faa97f465bae307b743b586e858825a9f93ca603709e22a05246`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 06 Oct 2026 01:41:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:41:33 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:41:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25026b52035d407861e471a4966c2fef5b62156db1e986b88e95cd3b895e12e5`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 7.7 MB (7709057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578574f30e56f70355cd602f1221a7b706f0cb98b7d7cfce4644ee367e7ed734`  
		Last Modified: Tue, 06 Oct 2026 01:41:48 GMT  
		Size: 61.0 MB (60968996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ebbc5c5a78b38cd8366ba54624e3f1573802bfbc22f6ba21eab93ca7b031aa`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fdaebd70b3b1afe7b3d600a93c31a1ae44701589d87136c1c6606dbc6cbf68a`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed5a1dd90213ee7a74c397d8cfb11ac747c91e28717befcdd8890d77ed3e45`  
		Last Modified: Tue, 06 Oct 2026 01:41:47 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.5` - unknown; unknown

```console
$ docker pull chronograf@sha256:cdc0976cb804cade8c4e1ec9beef40154a6f4cd1d52aa5da82773773a19925b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f31e9e7598739eb608bfbcfc7506c3db37a2641abc711506bec60eba4f531e`

```dockerfile
```

-	Layers:
	-	`sha256:f5d42ccb88b854cd2a5f297a484a619fac9c665059d3fd8e91e13cf9de1285ce`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa3366ac315be6f9588f8e2dccc91d4ba2eb88a09bed3543d390a90aecb5e56`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:0f6aa2e0619cd7d5aa3ef2ddcbb164b3b6766679d348c376b7f3bded27163a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93589696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1feb4ed6719c98e3b92aa500facc634f542582c5a9e4c7ae967420f9469d9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 06 Oct 2026 01:44:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:44:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:44:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:44:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66cba48e6c7fa6647debdf3777186c8b8a395c8cf0eb2c58ad09bb5b427d21f0`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 7.5 MB (7518433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ae03161f22eafb2cd8a0eda1cf6e6a64fd38cd35a9f6757858127a04e2ce19`  
		Last Modified: Tue, 06 Oct 2026 01:45:04 GMT  
		Size: 57.9 MB (57909619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23608d1c4a8bb79b5d6630ca5e3ca058e73b9b76b4f793f1249ee9017d60df9b`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e2ec08882dd0ce0ad74b7503dc738ab16b4b96a3434bcf8be0e51de9d7938b`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db6f0112dd01f603b15b9744297eb82ce88ec7b8e4d1710bb29b2a74472c0d7`  
		Last Modified: Tue, 06 Oct 2026 01:45:04 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.5` - unknown; unknown

```console
$ docker pull chronograf@sha256:173afc8d05f09b0b80f3908d7b6cf1b9623c57b8cdcdab340bc2a4a05fc61bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d444a58cae4296943b2d4dd6475a3fcb510b92312d1b4ae9663b960174c5f9`

```dockerfile
```

-	Layers:
	-	`sha256:120db5b53e03053da7136a558cf0faad5fc30fd35db45ae93ff8f1666cff6820`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a1856bcd9d562a23dde701201cba97b32122e98433ca0515cbcbc3210eef121`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:1.11.5-alpine`

```console
$ docker pull chronograf@sha256:e5df978c5b0590a543c3494a6b89ec2976c7d204243f94a2b6f39c449f57a3fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:1.11.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5ff92461e0484536e809d4c123bb2239c1ff2b401e291ec7eb76ad21164e28df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66160627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7c26504244453a8adcabf30e3a3a6da8a31f4961ea11ebd7f566c1b9c5eaa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:47:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:47:51 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:47:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:47:56 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:47:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:47:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721b3dbc726778d574440f78d681d7345e322ee039b9e8dee5408c75a4209f61`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2896334095505ad18e90c71517143758129ce213eabdc60bdd0fbd79aad01236`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 296.7 KB (296651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23cf772b6a98ae64a050b6dabf808924339c3b74020f8a7b926f9538e18b33c`  
		Last Modified: Tue, 22 Sep 2026 18:48:10 GMT  
		Size: 62.0 MB (61989500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b30e64e2c4e4a5cf2bf1b96eb255eb101acaed9d939a415d2169b221b58fe1d`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc45c001416d64e916262251fab65fd3c68dcbf1050c0b89278dc13e2a76668`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281c5448f40396f6237e658353a90d4883b5c3ce8257dd4695faa19839c0a06`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.5-alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:8bc169bf72ec0a6f7e154ae9993ff36ec6f575196e39a9d1c3c7449d9c6669e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3669b93a06e3e805ecea883e3abf6c0f072d9a6488a02594a0053e1aa316bc9a`

```dockerfile
```

-	Layers:
	-	`sha256:946e882fc6e31ab6c34d0b91fea3fe8e0a3610065ea015f7eece408adebe0890`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0f9d8967ff3b872b7725afc7f5d543f61912a09a38e823d61b09d4f4484838`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:e5df978c5b0590a543c3494a6b89ec2976c7d204243f94a2b6f39c449f57a3fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5ff92461e0484536e809d4c123bb2239c1ff2b401e291ec7eb76ad21164e28df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66160627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7c26504244453a8adcabf30e3a3a6da8a31f4961ea11ebd7f566c1b9c5eaa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:47:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Tue, 22 Sep 2026 18:47:51 GMT
RUN apk add --no-cache ca-certificates setpriv &&     update-ca-certificates # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:47:56 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/usr/bin/* &&     cp -a /usr/src/chronograf-*/usr/bin/* /usr/bin &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps &&     addgroup -S chronograf &&     adduser -S chronograf -G chronograf &&     mkdir -m 0750 -p /var/lib/chronograf &&     chown chronograf:chronograf /var/lib/chronograf # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:47:56 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:47:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:47:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721b3dbc726778d574440f78d681d7345e322ee039b9e8dee5408c75a4209f61`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2896334095505ad18e90c71517143758129ce213eabdc60bdd0fbd79aad01236`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 296.7 KB (296651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23cf772b6a98ae64a050b6dabf808924339c3b74020f8a7b926f9538e18b33c`  
		Last Modified: Tue, 22 Sep 2026 18:48:10 GMT  
		Size: 62.0 MB (61989500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b30e64e2c4e4a5cf2bf1b96eb255eb101acaed9d939a415d2169b221b58fe1d`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc45c001416d64e916262251fab65fd3c68dcbf1050c0b89278dc13e2a76668`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281c5448f40396f6237e658353a90d4883b5c3ce8257dd4695faa19839c0a06`  
		Last Modified: Tue, 22 Sep 2026 18:48:09 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:alpine` - unknown; unknown

```console
$ docker pull chronograf@sha256:8bc169bf72ec0a6f7e154ae9993ff36ec6f575196e39a9d1c3c7449d9c6669e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3669b93a06e3e805ecea883e3abf6c0f072d9a6488a02594a0053e1aa316bc9a`

```dockerfile
```

-	Layers:
	-	`sha256:946e882fc6e31ab6c34d0b91fea3fe8e0a3610065ea015f7eece408adebe0890`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 254.6 KB (254648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0f9d8967ff3b872b7725afc7f5d543f61912a09a38e823d61b09d4f4484838`  
		Last Modified: Tue, 22 Sep 2026 18:48:08 GMT  
		Size: 17.8 KB (17764 bytes)  
		MIME: application/vnd.in-toto+json

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:91d2f47bc24b266c316550ae8463c3bd68f45001e700d231956cda7b41ec725a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:3b94b0ba12c477b69fd9343430841158bd1355cba76a5bf357937ff25b3ae723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96951854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214db7b6a2b6faa97f465bae307b743b586e858825a9f93ca603709e22a05246`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:26 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 06 Oct 2026 01:41:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:41:33 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:41:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25026b52035d407861e471a4966c2fef5b62156db1e986b88e95cd3b895e12e5`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 7.7 MB (7709057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578574f30e56f70355cd602f1221a7b706f0cb98b7d7cfce4644ee367e7ed734`  
		Last Modified: Tue, 06 Oct 2026 01:41:48 GMT  
		Size: 61.0 MB (60968996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ebbc5c5a78b38cd8366ba54624e3f1573802bfbc22f6ba21eab93ca7b031aa`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fdaebd70b3b1afe7b3d600a93c31a1ae44701589d87136c1c6606dbc6cbf68a`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed5a1dd90213ee7a74c397d8cfb11ac747c91e28717befcdd8890d77ed3e45`  
		Last Modified: Tue, 06 Oct 2026 01:41:47 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:cdc0976cb804cade8c4e1ec9beef40154a6f4cd1d52aa5da82773773a19925b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f31e9e7598739eb608bfbcfc7506c3db37a2641abc711506bec60eba4f531e`

```dockerfile
```

-	Layers:
	-	`sha256:f5d42ccb88b854cd2a5f297a484a619fac9c665059d3fd8e91e13cf9de1285ce`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa3366ac315be6f9588f8e2dccc91d4ba2eb88a09bed3543d390a90aecb5e56`  
		Last Modified: Tue, 06 Oct 2026 01:41:46 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:0f6aa2e0619cd7d5aa3ef2ddcbb164b3b6766679d348c376b7f3bded27163a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93589696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1feb4ed6719c98e3b92aa500facc634f542582c5a9e4c7ae967420f9469d9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 06 Oct 2026 01:44:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 06 Oct 2026 01:44:49 GMT
VOLUME [/var/lib/chronograf]
# Tue, 06 Oct 2026 01:44:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 06 Oct 2026 01:44:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 01:44:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66cba48e6c7fa6647debdf3777186c8b8a395c8cf0eb2c58ad09bb5b427d21f0`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 7.5 MB (7518433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ae03161f22eafb2cd8a0eda1cf6e6a64fd38cd35a9f6757858127a04e2ce19`  
		Last Modified: Tue, 06 Oct 2026 01:45:04 GMT  
		Size: 57.9 MB (57909619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23608d1c4a8bb79b5d6630ca5e3ca058e73b9b76b4f793f1249ee9017d60df9b`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e2ec08882dd0ce0ad74b7503dc738ab16b4b96a3434bcf8be0e51de9d7938b`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db6f0112dd01f603b15b9744297eb82ce88ec7b8e4d1710bb29b2a74472c0d7`  
		Last Modified: Tue, 06 Oct 2026 01:45:04 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:173afc8d05f09b0b80f3908d7b6cf1b9623c57b8cdcdab340bc2a4a05fc61bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d444a58cae4296943b2d4dd6475a3fcb510b92312d1b4ae9663b960174c5f9`

```dockerfile
```

-	Layers:
	-	`sha256:120db5b53e03053da7136a558cf0faad5fc30fd35db45ae93ff8f1666cff6820`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a1856bcd9d562a23dde701201cba97b32122e98433ca0515cbcbc3210eef121`  
		Last Modified: Tue, 06 Oct 2026 01:45:03 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
