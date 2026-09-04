## `clojure:temurin-26-tools-deps-1.12.6.1673-bullseye`

```console
$ docker pull clojure@sha256:c1a19ebc53678243abe2d2d20c34789b96692191364dfbb9f74048e4cd054efc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2dee5376687c9bc5de48ffcda1c0706efad01f9afa470f2e6c683e2a681a3379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214879344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a61c48ed5912ffa55da8ab8a4dae638d24102ea9304be5caa6bb66bcae627e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:04:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:11 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88370f548fee192a289a9d743628550b449fbd998de5c992356bcba92d927d4e`  
		Last Modified: Fri, 04 Sep 2026 00:04:47 GMT  
		Size: 94.6 MB (94563743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873b451cba5a60f50f64ebb98eaae5fe96d49640e4618492e3250573f02fc752`  
		Last Modified: Fri, 04 Sep 2026 00:04:47 GMT  
		Size: 66.5 MB (66537166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2385688dc57016f03d8c77bc79965cbd18ae836f6980065236ea43e3930f48`  
		Last Modified: Fri, 04 Sep 2026 00:04:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce6a7ef6aeb416fe7a046a50af3f1cde8c4af46ec04237fd255c38ab2953d64`  
		Last Modified: Fri, 04 Sep 2026 00:04:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:aba7792367f9bc4c32a433015c5b2079698f29e76ab30a9514b406a71dbe8f00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e75e15268a62a586ed8106b86baa53be0578b859aae6447e81683140c8cad4`

```dockerfile
```

-	Layers:
	-	`sha256:c5828fe202d2846f63051ab6236d0f266689ac4af5ac0b6ccc6edd20bf1af623`  
		Last Modified: Fri, 04 Sep 2026 00:04:44 GMT  
		Size: 7.4 MB (7375545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db8fa00f6f529d6667557a27773aea8eaece3ccd02704294787c9dc4c681d0ce`  
		Last Modified: Fri, 04 Sep 2026 00:04:43 GMT  
		Size: 15.9 KB (15925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b696f8f074875c3bea0adaa38f8299dbf385fd61e8c6c459d7dc963ae5b7556d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212504627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93b41dd52ee16f8d81face18b2aca755bd37df772f90f297a15b03bef3f90a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:08:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:45 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:09:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:09:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:09:00 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:09:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d005a28683dbb23447715881c814f70fd6b9a01830f01f6252eda5df3736a0`  
		Last Modified: Fri, 04 Sep 2026 00:09:22 GMT  
		Size: 93.5 MB (93541529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648de858d1904ad99854aa6f7d7a69c021c7385cdae72fb6c4182b80434fdc48`  
		Last Modified: Fri, 04 Sep 2026 00:09:21 GMT  
		Size: 66.7 MB (66700713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10c00dd7d7cb50c3225884c3c4ca52bc00ffaaec1135fcb0ffc0adaf86f932b0`  
		Last Modified: Fri, 04 Sep 2026 00:09:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f4645995e64d9e71074413e79a53a184fa2d1d265da8053ec46058b45eb80a`  
		Last Modified: Fri, 04 Sep 2026 00:09:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:9b84f447902486cdf1e46be2a4a8ab80a8c6190d582d3a5ceb8098f807735b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ecb6aaa9d5e6e75ab1a0b27a1d70637ef6255db6179a9f29ada2fd0a95d205`

```dockerfile
```

-	Layers:
	-	`sha256:21f682aa6f03cdfbaaeaaae5c03d97082cdcc2266b6ef4f6629a8267ed874920`  
		Last Modified: Fri, 04 Sep 2026 00:09:19 GMT  
		Size: 7.4 MB (7380641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c42f81f470636c542caf5e6440d2f0046c67da428736210bec24a8db93ab995`  
		Last Modified: Fri, 04 Sep 2026 00:09:18 GMT  
		Size: 16.0 KB (16042 bytes)  
		MIME: application/vnd.in-toto+json
