## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:ae7220cbc7d2d1bcc927a9d62cff37504162b9f380ee6a0480b878db3f5b489f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7878be8a71ce348045f0dd819fd5c563a4477a690e05c998fd3272c98db985e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290079897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b6a2b5b140266f55d7c235331e07851b19c07bbee508e035d1bdd804c8d430`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:13:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:20 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:13:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:13:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58c10f87a7c3219cf1dae27c2d133c3f4a5d0cbce78f88db41589bb41e5ece0`  
		Last Modified: Tue, 06 Oct 2026 02:14:04 GMT  
		Size: 158.1 MB (158117465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338a4cc294fd7a3595f5cf11bdc4447eb0cdb7e8d1d1c01ab269afa9c729196d`  
		Last Modified: Tue, 06 Oct 2026 02:14:03 GMT  
		Size: 82.6 MB (82568191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7374f727c31bae4479f62942619d2ce7b8f00021d1dadbafb2d7d7064a94b4e5`  
		Last Modified: Tue, 06 Oct 2026 02:13:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4962c11c0005f9f9fb6de87dbfa42401b22f68c40b37b10c51b05c446bef56c1`  
		Last Modified: Tue, 06 Oct 2026 02:13:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5bf85af9294bba33bd827756d8645ddf6c390a1722be9e6c5fb50b18f86bef7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cb9f154ec4f257e3bb4cae0177dd3fc3f623184eebbcad5ba91e880c12a97a`

```dockerfile
```

-	Layers:
	-	`sha256:b56f26058e19b56a7b66cf52acccd5be64da606c7cc76cd56388d3ec47a0dfa3`  
		Last Modified: Tue, 06 Oct 2026 02:14:00 GMT  
		Size: 7.5 MB (7480672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da5197b998860735a12d8e322be8c0619e664926eecd69a96afb1db2c22643d4`  
		Last Modified: Tue, 06 Oct 2026 02:13:59 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bdc62e0b6a2ccab9a2a8e41804fb7f32d4d43d8e0b00e818c7ce878aea3c73fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288553484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f50935ed5d25c7a2acab8c6a1fc5bbe05d015006a41addd8849b26474d0db7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:19:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:19:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:19:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:19:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:19:01 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:19:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:19:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:19:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:19:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:19:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd6c964cb829e2da64f6b5f81fe8068835037b015756e49e49a2f8206660c9a`  
		Last Modified: Tue, 06 Oct 2026 02:19:43 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4da52163bbf39452fb108d5669d8e82fee7ccf262e833005f9a6cd1e18ab1a`  
		Last Modified: Tue, 06 Oct 2026 02:19:42 GMT  
		Size: 82.4 MB (82390664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99178268d2e688aa00abb74ca33ce41ff2c4eabec5462e8bdc82750a6f7f0f2`  
		Last Modified: Tue, 06 Oct 2026 02:19:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737354ba8b5fab0f51d28eaf7205558811ec6616e0c266fd38639c3ebf07837c`  
		Last Modified: Tue, 06 Oct 2026 02:19:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7087918262580b32c6d74ebff77f688bc02a2907dee6afe9776469401aad8f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2ee88cf0f3f30fb8e0171b0aaa25da69b10e3ca1fbda260e3e7adeddc91fc7`

```dockerfile
```

-	Layers:
	-	`sha256:e8874467c64b9123d7a41d99548df576126251a1d035282564e9e25aaa1db661`  
		Last Modified: Tue, 06 Oct 2026 02:19:39 GMT  
		Size: 7.5 MB (7487065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af2e62c15dca3e1f6f84688286088718d08863e230819c1f0c119413d0c87ee8`  
		Last Modified: Tue, 06 Oct 2026 02:19:39 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2e2194b32dac6ab6a8a7ec6336fba20581287990aeac7e8010de47fb6361ba94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299469275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1a5fe4fc3060e6db2d73d08bb2bf5503dfacb5e8acf467c4efe6ff9196ed2d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:02:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:02:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:02:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:02:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:02:41 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:15:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:15:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672bd588ed5276723506f7ce06a15138fe6d091a5d202c2fdabae87bc5d56532`  
		Last Modified: Sat, 26 Sep 2026 05:05:55 GMT  
		Size: 158.3 MB (158282679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af60b8692a3d6e324f61b80631868b99d269e3e82a7ce50c613ffb2b7c7d3cc`  
		Last Modified: Sat, 26 Sep 2026 05:16:09 GMT  
		Size: 88.0 MB (87990477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcc5b7176962b5a19f8c0d1ad88ccdaa40ff4e7032df65368c79849fef9ba85`  
		Last Modified: Sat, 26 Sep 2026 05:16:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0f5ec389f9d0283663dc934587223870038d5383a1f7453f6830d15cdc5c36`  
		Last Modified: Sat, 26 Sep 2026 05:16:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5d7882d2b9ab920aeecd1d7cd78ecdc378abb2825cf78a684f7afbbd07c62d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0bdfd13264676292a95c980f69f663eaeeef3a188e64bc67de8412be88f75e`

```dockerfile
```

-	Layers:
	-	`sha256:f7475f3a8b8fde9dcc6dcd304c204b1292ce076debf009ba2bcfaf116b05347e`  
		Last Modified: Fri, 02 Oct 2026 08:23:32 GMT  
		Size: 7.5 MB (7485091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b427f7db7f3d3bf8de38392c64bc6f1abe12a92c451f2a7b63cc75b376c82f6`  
		Last Modified: Fri, 02 Oct 2026 08:23:32 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
