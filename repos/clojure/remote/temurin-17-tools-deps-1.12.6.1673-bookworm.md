## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:736d4424c2c0b190c6240a7c018ee7bedda708b5f0d7931c5cc3cb4482337a95
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0b847efe286cd637503fa344eacf1e37a38a729ebc80e37d0f05a5ec20e2d70c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272521304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97f981208d9ceaa49b021b3dc80b550d7f40b5d8c3e31e78804e3b5f7b773e26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:45:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:45:25 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:45:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:45:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:45:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:45:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:45:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a38d5e61cacda145fa4009869d97ccffad8f68e97b0f6fcc37bbfa33e381472`  
		Last Modified: Fri, 02 Oct 2026 02:46:05 GMT  
		Size: 145.8 MB (145825466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690baf76d15c1a0a4367d13f9d93f08d534040d728a098ea79a096a6f8e77695`  
		Last Modified: Fri, 02 Oct 2026 02:46:03 GMT  
		Size: 78.2 MB (78191358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2303db8e00979ed87feb91901eb182f37d46f935f2e0f6bfc983b9b1d1640ff4`  
		Last Modified: Fri, 02 Oct 2026 02:46:00 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a282c5a89fec1f63cc875fc5646aa02f9b260d1ce630e093ee10e28e72be1a`  
		Last Modified: Fri, 02 Oct 2026 02:46:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a220311eff2bc0ceb2bca9275c3306cec73a0cfc49e38869287f363860583b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4374049379417a7cf4683ea0e20d1b92f2cec84e4bb67242f3e106fb323df941`

```dockerfile
```

-	Layers:
	-	`sha256:d9faeebd3112c61aa9d7449344dad515d42829158b804416001eaac356b5e18d`  
		Last Modified: Fri, 02 Oct 2026 02:46:00 GMT  
		Size: 7.4 MB (7380640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757ab9f2efe1357bf4147b26d0bdef77894a8044d44b91ca6f0bab53b2e944ab`  
		Last Modified: Fri, 02 Oct 2026 02:46:00 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a05ecfcc96463eb4a7ea3d976c6f410a4c503a15fc3d702c28bc80cf3febfe75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271213636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d7ad9548e9b9eb60adb831b6397a7be97952563ddf71a74549481e1633db53`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:45:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:45:21 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:45:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:45:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:45:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:45:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:45:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a42c20ccb644451d5d443d5f4c763038a82314f430d87e300663ddad97d995`  
		Last Modified: Fri, 02 Oct 2026 02:46:00 GMT  
		Size: 144.6 MB (144648223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e327937ac713c28c15f2357b41db80a7c9da4b8fba7fba0f144b9ddb9fb8e9f3`  
		Last Modified: Fri, 02 Oct 2026 02:45:59 GMT  
		Size: 78.2 MB (78174463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b629c6d93d8ea6ea04de6c9479c06880f29d76dd03950932b073d392f2aa8b`  
		Last Modified: Fri, 02 Oct 2026 02:45:56 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ab1939e21c4347a4333977021f846e58d733c64228b6237e03447e1f795a7`  
		Last Modified: Fri, 02 Oct 2026 02:45:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:162c311f452ccc86fa68a0452e3b3296a7ee980aa83984c46a8e47b719c9dddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ea2bc1086d6021d39f80b7ed929f11bbee6eff2cba3fe614432a5513f09510`

```dockerfile
```

-	Layers:
	-	`sha256:28a85fb924d1b6bd7d52bdd4d5e413c7b1ccd7f563fa91322beb681e582f244c`  
		Last Modified: Fri, 02 Oct 2026 02:45:56 GMT  
		Size: 7.4 MB (7386403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6c455fbde83bfcb3704261ff987ebe4c9b5a596f2a34c3a7ceb20dee13dd684`  
		Last Modified: Fri, 02 Oct 2026 02:45:56 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:38c0b3a60b5c7ffda4c35bf9d2a21c569d2240eea71780591786d931c4f564c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282013355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8a51be98e4a54ebed2b276b6f3515f8fbb2a9513d2ebad988b8cd0829fd7b5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:23:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:23:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:23:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:23:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:23:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:43:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:43:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:43:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:43:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:43:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0a3417a86da6db5f153e9976a10bc4a3fbb991587e3a3d32e8db92b65d84b5`  
		Last Modified: Sat, 26 Sep 2026 04:26:58 GMT  
		Size: 145.7 MB (145670552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0843bcaa46e0f0ecf03703289c96e437f51c66c23ee059daf1fb5bfd1e68a7ae`  
		Last Modified: Sat, 26 Sep 2026 04:43:48 GMT  
		Size: 84.0 MB (83992455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df234253924e48ba23ccc1f1696d03f19613d2ee562a45e9043819a63aae210`  
		Last Modified: Sat, 26 Sep 2026 04:43:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473b769abafe6624c63a45b756cc463b435d7114a414abc243c9d61dc47cc9ab`  
		Last Modified: Sat, 26 Sep 2026 04:43:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0b37c1273977e71266d62f8c547771421be370df55f9ad2673bd1fe5ab21b79a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61c1a2bb6ac11649c59cd68e6a98f81ac75dbda7bacfdd9d6a4cd9c757baecf`

```dockerfile
```

-	Layers:
	-	`sha256:9891536fec92923e3effce5bc7b56e130a8a89ccddc2385a6418822e05c089ef`  
		Last Modified: Sat, 26 Sep 2026 04:43:46 GMT  
		Size: 7.4 MB (7385854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eab02f584c8850f6b098a7b361e3a93f7c624f81fd5f69583261b8e812adb8c`  
		Last Modified: Sat, 26 Sep 2026 04:43:45 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
