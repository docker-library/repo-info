## `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim`

```console
$ docker pull clojure@sha256:8cbba740aebd030c7a18dc629a82cd1f7bb978160577abd8c09a1da8e84ac6ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ace152c53675ed7a5cafb6f8dfb78117e76660aacedfe352f2ae71582b53f8c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187455881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5384f3092189d2211c8144e5e56ce16f9a65c64011883b3807c75aa118577881`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:54:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:38 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:38 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c277db1ece9dd34d378f28221575ac2f759df728f229962531841acd2e547b`  
		Last Modified: Thu, 02 Jul 2026 05:55:14 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb6f7a05b527e4c6b9528c50569c1d8ea3eed28d09ece69508e1cd9153fe7e`  
		Last Modified: Thu, 02 Jul 2026 05:55:14 GMT  
		Size: 66.6 MB (66642634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1946de50f00da02bd9feda0171b2c8752b58ccd067121b82fcb72706bc1b70cb`  
		Last Modified: Thu, 02 Jul 2026 05:55:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cde1e2c471ed97228f013d7eb2b442ba3f3b94f3b5853266014c370bea7324f`  
		Last Modified: Thu, 02 Jul 2026 05:55:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85c7676fb78b5454f5206295f2e79d3f9537f2eaa7b13a0ed079044b96fde5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f30d000e6c03d7bcd2d15971d03e44063f993118a21ce0cbd7fcd38d5689afb`

```dockerfile
```

-	Layers:
	-	`sha256:0552d43a06ea7d816cc7a24c14dbd61cfa8a7dbe309dc6186695fc75cce2e262`  
		Last Modified: Thu, 02 Jul 2026 05:55:11 GMT  
		Size: 5.1 MB (5082089 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49b559410f66d3f82f105e7dc7467b00cc3988599903ea604ab835d77b4884ca`  
		Last Modified: Thu, 02 Jul 2026 05:55:10 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a4145df93ca61855131152208a11db38e8f3bf98952f4fa4673a6318417cb3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186308204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c70fa53a6aebe78e09f1fc21b67d81407ca259b51de9543a6f2625077bbcc41`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:55:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:08 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:55:08 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:55:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34347fe836324e73bc324ae59153f3b01972bed4658b7120cced11d39e9b7da`  
		Last Modified: Thu, 02 Jul 2026 05:55:45 GMT  
		Size: 91.5 MB (91542268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb9c0cfbf826e71026b9926813f003fd4d0078aa56e5ed4c6237884c31464ac`  
		Last Modified: Thu, 02 Jul 2026 05:55:45 GMT  
		Size: 66.6 MB (66642473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be73f72c781a39c3cceaf5ebbc3f99a1102a8c965cb20e5143a3421e7831912a`  
		Last Modified: Thu, 02 Jul 2026 05:55:42 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a4db910bb9d63ad9d383aaf481215af3e75289e7665faa2f9dd745cf7c1c1e`  
		Last Modified: Thu, 02 Jul 2026 05:55:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb89040e32eda7b06596a72479061c29b330d12295bdd61c948c166141370925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c45343c260a28d65a4b27c0611f8aacf7dde51d35afeee927526e850e1ddf2c`

```dockerfile
```

-	Layers:
	-	`sha256:162ac26de1e8ba0625743747676de3f07092bca5c769dde1f1f3403e27d3761f`  
		Last Modified: Thu, 02 Jul 2026 05:55:42 GMT  
		Size: 5.1 MB (5087871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d06e3f10d03dc4b93957c60331d7df890e36d6241d762cf7bfcfc6ffe93821c8`  
		Last Modified: Thu, 02 Jul 2026 05:55:42 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1465b858d20584d6f14234dd67469e98c0589b53fae76cd358c946c03df9af7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196473167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7abaecc63b36a4cc56d9a1b57aaada26627cc3ec02dbd61928678c15e27e210`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:34:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:34:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:34:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:34:17 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:34:17 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:42:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:42:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:42:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:42:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:42:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ad1347ac99eda388900bf32362d26821dc5ce6f75106fcf350c34a7f8986e6`  
		Last Modified: Thu, 02 Jul 2026 07:37:39 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f423c0281a9e371c29a57051b11df7d2d6e6e2a259e22956e9de94301dc0fe1e`  
		Last Modified: Thu, 02 Jul 2026 07:43:08 GMT  
		Size: 72.5 MB (72476114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b44dcfe371e9c0e284e73da2819ea3f191f52611cbd8c67c5166a6854174142`  
		Last Modified: Thu, 02 Jul 2026 07:43:06 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029cd8719ee4e0bb41ede32b9e19e3566d7ce5c366234f96dc87d66891132695`  
		Last Modified: Thu, 02 Jul 2026 07:43:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:73d897af147f6e588139a0ae545ff33b72996820ecac021c051f66edf2e4ed0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93072d05d98b96a84321dbd94d7af72b1a92ee2ddf1313118b229cd222480757`

```dockerfile
```

-	Layers:
	-	`sha256:b4dfa786fdad313dc5b8c382c8527dd66c29cff5f421e6faae739614311ebd05`  
		Last Modified: Thu, 02 Jul 2026 07:43:06 GMT  
		Size: 5.1 MB (5070571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e17ac9910f02ce08ed9d0d498b2d48d35e7b7f9ccdb3bfe578a497823be71404`  
		Last Modified: Thu, 02 Jul 2026 07:43:06 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:ebb8dbc009930e8364d997fc40cd76c8722ada57933fe187b469ee221981ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180767307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3516581f302c8ae2f9aa315a0b56c1703ef84b09c33b59dcf2b5f43b30206a95`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:58:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:58:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:58:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:58:10 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:58:10 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:58:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:58:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24927421f717252a2fe622dd4947cad981aa59c75651ab5ef02e54e0b7e20de3`  
		Last Modified: Thu, 02 Jul 2026 05:58:49 GMT  
		Size: 88.4 MB (88420356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5091d6521f24a183fedec0ef3447369d06c5f58215536993e1f1fbe6a2ffa040`  
		Last Modified: Thu, 02 Jul 2026 05:58:48 GMT  
		Size: 65.5 MB (65452321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96749bb4eccb612fb59b8d4bdc37affc03b776c67a3ba44b74e6d6b69a7cec`  
		Last Modified: Thu, 02 Jul 2026 05:58:46 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f016db1fb48c922bfec0dce71ad1abfff5177a220cdad56a15218bc82e58da74`  
		Last Modified: Thu, 02 Jul 2026 05:58:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:edd26ad0b731ec27f2b64b1349d69cf091f7415afe295230dfb5d8df766539bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5074651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a631ce9b33441d6108053cd81cd2dad075c5896f1ecb16c687501d43ac991f75`

```dockerfile
```

-	Layers:
	-	`sha256:e19526ef36d6cfcacdc128df8bf7f11f6c7c180037bcd48c8106379e72596927`  
		Last Modified: Thu, 02 Jul 2026 05:58:46 GMT  
		Size: 5.1 MB (5057972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b08b7adb642ed86e69e108f0f5554ac02406dee7f02be0865cbf79f8f7077ae`  
		Last Modified: Thu, 02 Jul 2026 05:58:46 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json
