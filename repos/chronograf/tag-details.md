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
$ docker pull chronograf@sha256:e01a840ecaf467e5b058faf985d945a1ace75a950e6064fa0218948a6e0ba069
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11` - linux; amd64

```console
$ docker pull chronograf@sha256:d4fbddafa8606ced8197a964808bf9315f9b23c5956f5a11bc77943d87aeee12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96978468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4beba034d6e440a19bd501bd01a0cae0b08da426f0894aa0d1a814a6c4e0320e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 17:45:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:45:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:45:08 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:45:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:45:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71864cd22eb84cef31027dcbf8770b4de0dcc76e9928389671fca2e8e1eb15a`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 7.7 MB (7709185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548a7049a1d11eb6a9f5171789408d5fa57c66a89e062a7bd7fedae0586d98b7`  
		Last Modified: Fri, 16 Oct 2026 17:45:24 GMT  
		Size: 61.0 MB (60995483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa61b875731537be09bff964af6f3e5a49139d2fa805a16aecef6c32e31087f`  
		Last Modified: Fri, 16 Oct 2026 17:45:22 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8e1bf933ccd728cf4151010969bd7f1f36ae08df6ebfe39871dc099488bfa`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51374c988c08796041b4fa4b29411c36d8110504163f1a1ea5078a81cd1173f4`  
		Last Modified: Fri, 16 Oct 2026 17:45:24 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:2150d3de50821b860062742acb98035b5f1885c6090b1c4abc7c3c5af0528cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a974d982edbd730d6ec348378663134886831977c32e3d688ec9c740035172`

```dockerfile
```

-	Layers:
	-	`sha256:6ceb7c64dfd64683235d513c65612792623c1b57a7e87f960ba3166bc26d9baf`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff7e691732109d8419ce27c28401a7dba0f005484481723203f26b0c57237155`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7d87bbb796411b05b7eb7cd650eeecdbac10171580258390f7b2e37d7c4cc682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93633630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521619b4ffdee3b155802818507e71f48a22dcab5d3eb0e1b4864cb562800b8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 17:43:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:44:03 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5d3b6667a29f97a091f060f04e157b2d20504dd90e17f946d08ce78498a030`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 7.5 MB (7518318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b5657635a1526344cd0611e593a522712d76911a93b36c7702f40536a60ca7`  
		Last Modified: Fri, 16 Oct 2026 17:44:19 GMT  
		Size: 58.0 MB (57953658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5a687a7a14ca1e437c1de73229beaaf241873b133dac60e8b953e2d2e61d04`  
		Last Modified: Fri, 16 Oct 2026 17:44:17 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ade95ec03a1ade8ddd920794daa54c0491d37b4c4aad941c109399328fe3196`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cbd4bf767082dfa8a7d4a7d741aa621551b59fd5d828c76e023ca5b17b5515`  
		Last Modified: Fri, 16 Oct 2026 17:44:19 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11` - unknown; unknown

```console
$ docker pull chronograf@sha256:9e011e413577d26dc783d32adb49ffc9e83aa46dc657200ce6126d8ab56058e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9a7ca4790817002112cc929aedec1bb443d11e5bede3331599bec8f24ea412`

```dockerfile
```

-	Layers:
	-	`sha256:09ee725fc76275b48846983e290ed80c1be03113b5194bee47fc9059830a546b`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a35865ecda6ad4053e7e33774ae3eb0754d9c3c3dab9cd20286d107b2cd884ce`  
		Last Modified: Fri, 16 Oct 2026 17:44:17 GMT  
		Size: 16.2 KB (16192 bytes)  
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
$ docker pull chronograf@sha256:e01a840ecaf467e5b058faf985d945a1ace75a950e6064fa0218948a6e0ba069
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:1.11.6` - linux; amd64

```console
$ docker pull chronograf@sha256:d4fbddafa8606ced8197a964808bf9315f9b23c5956f5a11bc77943d87aeee12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96978468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4beba034d6e440a19bd501bd01a0cae0b08da426f0894aa0d1a814a6c4e0320e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 17:45:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:45:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:45:08 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:45:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:45:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71864cd22eb84cef31027dcbf8770b4de0dcc76e9928389671fca2e8e1eb15a`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 7.7 MB (7709185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548a7049a1d11eb6a9f5171789408d5fa57c66a89e062a7bd7fedae0586d98b7`  
		Last Modified: Fri, 16 Oct 2026 17:45:24 GMT  
		Size: 61.0 MB (60995483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa61b875731537be09bff964af6f3e5a49139d2fa805a16aecef6c32e31087f`  
		Last Modified: Fri, 16 Oct 2026 17:45:22 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8e1bf933ccd728cf4151010969bd7f1f36ae08df6ebfe39871dc099488bfa`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51374c988c08796041b4fa4b29411c36d8110504163f1a1ea5078a81cd1173f4`  
		Last Modified: Fri, 16 Oct 2026 17:45:24 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.6` - unknown; unknown

```console
$ docker pull chronograf@sha256:2150d3de50821b860062742acb98035b5f1885c6090b1c4abc7c3c5af0528cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a974d982edbd730d6ec348378663134886831977c32e3d688ec9c740035172`

```dockerfile
```

-	Layers:
	-	`sha256:6ceb7c64dfd64683235d513c65612792623c1b57a7e87f960ba3166bc26d9baf`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff7e691732109d8419ce27c28401a7dba0f005484481723203f26b0c57237155`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:1.11.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7d87bbb796411b05b7eb7cd650eeecdbac10171580258390f7b2e37d7c4cc682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93633630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521619b4ffdee3b155802818507e71f48a22dcab5d3eb0e1b4864cb562800b8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 17:43:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:44:03 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5d3b6667a29f97a091f060f04e157b2d20504dd90e17f946d08ce78498a030`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 7.5 MB (7518318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b5657635a1526344cd0611e593a522712d76911a93b36c7702f40536a60ca7`  
		Last Modified: Fri, 16 Oct 2026 17:44:19 GMT  
		Size: 58.0 MB (57953658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5a687a7a14ca1e437c1de73229beaaf241873b133dac60e8b953e2d2e61d04`  
		Last Modified: Fri, 16 Oct 2026 17:44:17 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ade95ec03a1ade8ddd920794daa54c0491d37b4c4aad941c109399328fe3196`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cbd4bf767082dfa8a7d4a7d741aa621551b59fd5d828c76e023ca5b17b5515`  
		Last Modified: Fri, 16 Oct 2026 17:44:19 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:1.11.6` - unknown; unknown

```console
$ docker pull chronograf@sha256:9e011e413577d26dc783d32adb49ffc9e83aa46dc657200ce6126d8ab56058e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9a7ca4790817002112cc929aedec1bb443d11e5bede3331599bec8f24ea412`

```dockerfile
```

-	Layers:
	-	`sha256:09ee725fc76275b48846983e290ed80c1be03113b5194bee47fc9059830a546b`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a35865ecda6ad4053e7e33774ae3eb0754d9c3c3dab9cd20286d107b2cd884ce`  
		Last Modified: Fri, 16 Oct 2026 17:44:17 GMT  
		Size: 16.2 KB (16192 bytes)  
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
$ docker pull chronograf@sha256:e01a840ecaf467e5b058faf985d945a1ace75a950e6064fa0218948a6e0ba069
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:d4fbddafa8606ced8197a964808bf9315f9b23c5956f5a11bc77943d87aeee12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96978468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4beba034d6e440a19bd501bd01a0cae0b08da426f0894aa0d1a814a6c4e0320e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 17:45:02 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:45:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:45:08 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:45:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:45:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:45:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71864cd22eb84cef31027dcbf8770b4de0dcc76e9928389671fca2e8e1eb15a`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 7.7 MB (7709185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548a7049a1d11eb6a9f5171789408d5fa57c66a89e062a7bd7fedae0586d98b7`  
		Last Modified: Fri, 16 Oct 2026 17:45:24 GMT  
		Size: 61.0 MB (60995483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa61b875731537be09bff964af6f3e5a49139d2fa805a16aecef6c32e31087f`  
		Last Modified: Fri, 16 Oct 2026 17:45:22 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8e1bf933ccd728cf4151010969bd7f1f36ae08df6ebfe39871dc099488bfa`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51374c988c08796041b4fa4b29411c36d8110504163f1a1ea5078a81cd1173f4`  
		Last Modified: Fri, 16 Oct 2026 17:45:24 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:2150d3de50821b860062742acb98035b5f1885c6090b1c4abc7c3c5af0528cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a974d982edbd730d6ec348378663134886831977c32e3d688ec9c740035172`

```dockerfile
```

-	Layers:
	-	`sha256:6ceb7c64dfd64683235d513c65612792623c1b57a7e87f960ba3166bc26d9baf`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff7e691732109d8419ce27c28401a7dba0f005484481723203f26b0c57237155`  
		Last Modified: Fri, 16 Oct 2026 17:45:23 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:7d87bbb796411b05b7eb7cd650eeecdbac10171580258390f7b2e37d7c4cc682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93633630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521619b4ffdee3b155802818507e71f48a22dcab5d3eb0e1b4864cb562800b8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 17:43:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Fri, 16 Oct 2026 17:44:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
EXPOSE map[8888/tcp:{}]
# Fri, 16 Oct 2026 17:44:03 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Oct 2026 17:44:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 17:44:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 17:44:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5d3b6667a29f97a091f060f04e157b2d20504dd90e17f946d08ce78498a030`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 7.5 MB (7518318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b5657635a1526344cd0611e593a522712d76911a93b36c7702f40536a60ca7`  
		Last Modified: Fri, 16 Oct 2026 17:44:19 GMT  
		Size: 58.0 MB (57953658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5a687a7a14ca1e437c1de73229beaaf241873b133dac60e8b953e2d2e61d04`  
		Last Modified: Fri, 16 Oct 2026 17:44:17 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ade95ec03a1ade8ddd920794daa54c0491d37b4c4aad941c109399328fe3196`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cbd4bf767082dfa8a7d4a7d741aa621551b59fd5d828c76e023ca5b17b5515`  
		Last Modified: Fri, 16 Oct 2026 17:44:19 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:9e011e413577d26dc783d32adb49ffc9e83aa46dc657200ce6126d8ab56058e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9a7ca4790817002112cc929aedec1bb443d11e5bede3331599bec8f24ea412`

```dockerfile
```

-	Layers:
	-	`sha256:09ee725fc76275b48846983e290ed80c1be03113b5194bee47fc9059830a546b`  
		Last Modified: Fri, 16 Oct 2026 17:44:18 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a35865ecda6ad4053e7e33774ae3eb0754d9c3c3dab9cd20286d107b2cd884ce`  
		Last Modified: Fri, 16 Oct 2026 17:44:17 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
