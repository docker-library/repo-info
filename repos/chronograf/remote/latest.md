## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d4d6e01c51f2e40602be882ac6c9550da1e4dfa1f5359f0c05d409bc05ce4b8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:881641b63421c1f7cdbdf2cb872babb8d316cd334e2824dc34876857d1dd681b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96990506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f582b31838b40ff1d9a4bc02e4cd77cae87db7c8ee5121d4b4cc50f0271f0a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 04 Nov 2026 23:49:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:29 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:29 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498994bddcdac367ff7000f4220e1e11738321104beab7d6bd1fe4b3e953b33a`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 7.7 MB (7704242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdd76d201d663b7420c8fb9847c964d8ab6d9ecb1a083fbf7cea51586e1c7b4`  
		Last Modified: Wed, 04 Nov 2026 23:49:44 GMT  
		Size: 61.0 MB (61014353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a33397a03da55360324d658157236d4b41e1596f48fd7e4a83a14441577356`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa9adb19474b8d14b0ebae986057d403085da12a45f7b5813cfdf57d868f30`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a690caf1aa241ad33876a922cfcdd62190b13b187a6386fb8c8d74ab0f2b15`  
		Last Modified: Wed, 04 Nov 2026 23:49:43 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:b12e10fb08870b510924b685ff5d83a4b571a79bd1f0aa1a71ca0eec00124b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c0a18d4441cf35de86d69c7a8d02961ee102d2a7af18b476c19614dfc09e52`

```dockerfile
```

-	Layers:
	-	`sha256:5a2da10af72727d2015696a98e6b44f76586d4f5c373242b72d298e147b678d0`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc9793840d517d7c1690211882f5e444a470da9e07b9d8ec64fe925bf5ec43a6`  
		Last Modified: Wed, 04 Nov 2026 23:49:42 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:43f62158ffb7a266da2b698c10691c11ec1320e42de31c4195294668dd263346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93638359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86b513bc9f76b4f0d0bbf28480e9402e44cb586878ac1f65c6cd128304d2142`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 04 Nov 2026 23:49:29 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Wed, 04 Nov 2026 23:49:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 04 Nov 2026 23:49:36 GMT
VOLUME [/var/lib/chronograf]
# Wed, 04 Nov 2026 23:49:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:49:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 04 Nov 2026 23:49:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024dd3cb7686fa142367ac9d21cf95282d7921887a71f903c176ec343191a250`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 7.5 MB (7515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cefe2aaf043e616bd8f30c2ada562cb6dc139dd4c77e9af2c518e2511022aad`  
		Last Modified: Wed, 04 Nov 2026 23:49:51 GMT  
		Size: 58.0 MB (57960728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e3795651baaadc34fbd678240db68afcab08ae45f79d720830f37ef8c97f3d`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b3e2f7c195bda78b3d135fcd181b2838b5f2645ab35086d077bc5c93b6d994`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3a1f2c9bf140ac1bbc128228a02981d6fcc4f41c4a30c1221554ac313b4075`  
		Last Modified: Wed, 04 Nov 2026 23:49:51 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:71b858e159a5c000d2bf970b9cb22dfd2caefca010c03d158035cae4106965ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a530854ff88c86011e05762a5df78f0c820b9fc1220d6975182790a26fd01d9`

```dockerfile
```

-	Layers:
	-	`sha256:e59ce0d038c4a9332c11c5cfb2bd5ef9aa666440317faf6aef8f072e7da9f6da`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 2.9 MB (2877044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45cdad36594dcddc52d11a5a7ba6af06e098604f070be67d983aa2d8aa1d2dc4`  
		Last Modified: Wed, 04 Nov 2026 23:49:50 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
