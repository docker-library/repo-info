## `sapmachine:lts-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:291a3df788aa02af08842413d93406b509fed76cc9c28f0bfe10ca23eb93f76c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:12158c80010112954087307d5ef51dff5260f06044cb1ca33263d2af9c420a84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87425369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e542178a49c04e68388b31a9682d534fd2b8b6d8b97a9e831c474b7fe5abe1f`
-	Default Command: `["bash"]`

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
# Thu, 02 Jul 2026 02:37:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:37:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8c2c5a4e6f2b717f8aac881c7f82776cd756644a94660d9c53939559e6ab8`  
		Last Modified: Thu, 02 Jul 2026 02:37:40 GMT  
		Size: 57.7 MB (57686488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b27f94fa08a02346760f97f105c17ad724606d4c67f99b620f5464fee537766d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0d8ef26008b58750a229858f2e3c277065a9998719327d7406ed799dc21f3b`

```dockerfile
```

-	Layers:
	-	`sha256:618aea894071ddcf5f64c92b410f53217b9ed9a588238b6a1491a2d3c18ea13a`  
		Last Modified: Thu, 02 Jul 2026 02:37:39 GMT  
		Size: 2.6 MB (2553731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3412cd2a6c6299bab3bc16d9d0df071691008faa2329743ffeb0b9b11324d575`  
		Last Modified: Thu, 02 Jul 2026 02:37:38 GMT  
		Size: 9.4 KB (9437 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f5dc5478f574062173703b092e4a2892642451231c6fd4024eb6804d3b3872bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84221410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0de58a9f6581147b8407f148a488b05c24e9e831ba00231f279c89e2fbe4a186`
-	Default Command: `["bash"]`

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
# Thu, 02 Jul 2026 02:36:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:36:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29a532ee12898970a76e5e6fa7c2b7206beb3a3ea32379670317da7bcb86b62`  
		Last Modified: Thu, 02 Jul 2026 02:36:49 GMT  
		Size: 56.6 MB (56608226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:260c52008e785b7557d5c54c29131cfc3a83bc3b7ce7a1619c9119d85f104512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1bddc8afb18fdc03533856b6148a65edc26e483f67027dccf942b2f3cba5ce`

```dockerfile
```

-	Layers:
	-	`sha256:38df6e919899b1ec458519d2d22ac432662d243978f7d09332042f937e0c86ed`  
		Last Modified: Thu, 02 Jul 2026 02:36:48 GMT  
		Size: 2.6 MB (2553434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17ea0784df8ef57d034be416689a57249c6d0d60016da2d16bc1486c4bdac1ce`  
		Last Modified: Thu, 02 Jul 2026 02:36:47 GMT  
		Size: 9.6 KB (9565 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:424d8e693d99e4a6f3247de73faeeaf6ca250a7b1266022afc3fadec7c5e3045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93115002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559f72c77329975b6b93ce729b69f3c20a45157afe52b119dac0ee8027736c27`
-	Default Command: `["bash"]`

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
# Thu, 02 Jul 2026 03:33:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:33:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 03:33:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea6b3854025c2a47399781eb054f97830a4651f8ddd11180f1a7793a4cba015`  
		Last Modified: Thu, 02 Jul 2026 03:33:54 GMT  
		Size: 58.5 MB (58473134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6795f15077c19d3a5dad5d4980d9c88214dc8eba896ea161a01d8e6238a50f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c53ed52a54a363628e8e9f9c299f1d183c49303450f7ae57ff2e690a5a7f22e`

```dockerfile
```

-	Layers:
	-	`sha256:62814afbbe959226cf8b212d26bbbf227c33e560fa8fc37a39c3fafef61de6ba`  
		Last Modified: Thu, 02 Jul 2026 03:33:51 GMT  
		Size: 2.6 MB (2552645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:281cc50f51dfe9e2828c1a5db41eeb4db7f684fe8e7f4ea3e8f69bb2453f1995`  
		Last Modified: Thu, 02 Jul 2026 03:33:51 GMT  
		Size: 9.5 KB (9493 bytes)  
		MIME: application/vnd.in-toto+json
