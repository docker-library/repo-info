## `sapmachine:jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:5253b5185a5a140fc9298a4e72a5a4905ea7fb93a02b9631e7184b4e0bbb5a06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:994240b7a7f14081d74d688b43aac7ae54898a6031f1713915c85b6d12a43382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167821341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b996794e62f67673328159fd9a824d4d4682e4094b51a999662ff8b6e04f34`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:39:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:39:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e545dd501d91a08147ae925bbfecc98b93ccea17e8ba164eecb29a2356ff5ce`  
		Last Modified: Wed, 11 Nov 2026 23:40:10 GMT  
		Size: 137.8 MB (137751808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:09c38ee3320bdac9a38126feb3d570844178cb3ab392573053a9ce9383b09794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fc572578d32d7e698c593d5ddf74f1ad8746e8e3985faae53a802d8b7945ac`

```dockerfile
```

-	Layers:
	-	`sha256:e94894d0e3381b700f589c8c6919db10e3765837ec282a2dc1a1224a7a34c739`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 2.3 MB (2321926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed9cb1475f85fe11f2955e74b566a76758f1fd06266451bf29a891ad68b89900`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 10.3 KB (10331 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:be4cbb11aed05a7c15f5a4adc8bf13282a10bc9f07b538f6fa96b1467492e073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164793496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c12db8be1d954c824f121f32ce5289d697ca0f7572bf7992f7167d3a80aa4a`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:42:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:42:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbca06f240006741f48d42e045b61a901f9689229dd1f45a568ae19f809c062`  
		Last Modified: Wed, 11 Nov 2026 23:42:27 GMT  
		Size: 136.8 MB (136792084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ebba9cfc44f7374a3f61205d91b3007c46d080b6e5efa4ff6690fae046148203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94dc592b7063381e2220f2ccbbe547fa4fcea00bdc38657b9832879154124caf`

```dockerfile
```

-	Layers:
	-	`sha256:a4c628d3ae8448bdfa4652d58ce5a9153266dae4b18e883cd2747b2a8567a282`  
		Last Modified: Wed, 11 Nov 2026 23:42:24 GMT  
		Size: 2.3 MB (2321619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67e127e4936966300b5629aa5860d22ea16e984a3c50fdbe3389eea2e3a7f54e`  
		Last Modified: Wed, 11 Nov 2026 23:42:24 GMT  
		Size: 10.5 KB (10459 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:484ea7684888f64adeb43a1337a378755e3b557c3a4913a73f7018b0eaf8ddb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171443251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ec648c6458792ce9e9484a7a8368831744f06b0a5f2e08b5018b8bab575ffc`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:28:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:28:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:28:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c17dadcceae7ae16c9f2543a2338e54dc96cc2bd4a499dcc620de4f310cdc07`  
		Last Modified: Tue, 27 Oct 2026 07:29:14 GMT  
		Size: 136.7 MB (136739318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:330d0cbb16e9079fad8e8442b17f4e336ed0ee8d4f7dc4690afafef527ce75f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2fdfef5339bf6ec199e9865c5804e81ed89f26857a1c755c705b786c278e414`

```dockerfile
```

-	Layers:
	-	`sha256:affd1b55eda90ce85baaf4ff3c6667f25678d1b85f61e30821fd72d84ecff8c5`  
		Last Modified: Tue, 27 Oct 2026 07:29:11 GMT  
		Size: 2.3 MB (2320142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f1d46b944cdcaafae58080a41bb84cf15c9cc2c48d037d75e0a539bb409bd0d`  
		Last Modified: Tue, 27 Oct 2026 07:29:10 GMT  
		Size: 10.4 KB (10387 bytes)  
		MIME: application/vnd.in-toto+json
