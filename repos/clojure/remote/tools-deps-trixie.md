## `clojure:tools-deps-trixie`

```console
$ docker pull clojure@sha256:2a957cef7deb03c77ba53c544b16c89781932cdb1d7c0bbf241e1cc17c56cc69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:bec7e27e841f0b1a4bab1b45f398b226170e9b87864d85a20ab2e31c26a52f9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230436796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f117dbfefe0e1fde65c15730b72f7d21e0e6a0111b1a54ad651f971d554bf923`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:37:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:37:28 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:37:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:37:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5dd334626fe94e5480ce68948c814ed857ef6aae0eb16f3c9df00081e20446c`  
		Last Modified: Wed, 16 Sep 2026 04:38:12 GMT  
		Size: 92.6 MB (92615107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6d73742e7349ea1ea63115fcfa12b120c75084ee49335ac29eae418803dfbd`  
		Last Modified: Wed, 16 Sep 2026 04:38:11 GMT  
		Size: 88.5 MB (88482819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900c4912acb07451894e90ac79cae2b7c6076120f5d047a0e851055c8ffe7466`  
		Last Modified: Wed, 16 Sep 2026 04:38:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef40a3a6a3b06eb23050b0384cb6218205b4d3a75f49bac93b5ed786ad57b331`  
		Last Modified: Wed, 16 Sep 2026 04:38:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e7931e08ec3e58bf56f50d31a8f125dec7038b4b2f7e0d63590b8a1ff4f8ce30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0da27f2224348ac2360bc3522e18a154787b652b9586b093ea0c5a635363e69`

```dockerfile
```

-	Layers:
	-	`sha256:76e46cda0b4cf99cacd7583d1fdcac9109ab44e1e94ca8c2d89ee2b6194da501`  
		Last Modified: Wed, 16 Sep 2026 04:38:08 GMT  
		Size: 7.4 MB (7442005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c85a095ae0a20953e0d72bfc96feacf627fde35d30cdf0d519db7412419bf99`  
		Last Modified: Wed, 16 Sep 2026 04:38:08 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4cc636143362890be2e8f3ebddb3720214553d09123b730e5d9ce8d591d048bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229867454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdb3bd85e592d7b8523d5862aeff34117c72abe5556ef0b512f1ea0253c9e27`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:38:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:38:02 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:38:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:38:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2c1601e3005da4b71ff4e4b2a6051c4b59d892eedbc843c20cfea5c7d9aca0`  
		Last Modified: Wed, 16 Sep 2026 04:38:48 GMT  
		Size: 91.5 MB (91532227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a534c491fffb6ef650f9c2f06e3fe6b0b186cd03f24fa8a40ea8699a0075e2cb`  
		Last Modified: Wed, 16 Sep 2026 04:38:48 GMT  
		Size: 88.6 MB (88629330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c94f05147ce57e9d78624e418cc7091720f99491a53aa753a9b0a934cb4d031`  
		Last Modified: Wed, 16 Sep 2026 04:38:44 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505739b8dbec82534304175ac0b4699886fd42cbf22b4533e574ad15bd9ec4f8`  
		Last Modified: Wed, 16 Sep 2026 04:38:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f72dc022d340e1a6878dc4b9027713dbaff4cd4ceedb70f9c01d4ea29f168c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3ad97d1652c75c5792558e999dae27636c7cdfbdfbc2f0d769182412017ead`

```dockerfile
```

-	Layers:
	-	`sha256:7f8494e39824b2c6c84f1ba1ebeed03a27c9590899dbb8549daa319656d14686`  
		Last Modified: Wed, 16 Sep 2026 04:38:44 GMT  
		Size: 7.4 MB (7448419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d30fdd7b3309e3db820e5f09fd5dc22aac54a4fd52c8dd7c2aec604de1b1f06`  
		Last Modified: Wed, 16 Sep 2026 04:38:44 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a2b37564a6da52e39d02c3f47e5792d7b486d60f035f1a1b087bcdb5aaa87d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236137863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6ab5d81215843b05f5225ac7ba48d2a85bd77b8d7b067ed3a4f2ef9574a1fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:28:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:28:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:28:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:28:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:28:25 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:29:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f042512cdeeb3671805656526c674d63e4666ca8945ffdb37a0a08d4079e481`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.3 MB (91255831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1350bb3e20a6eebbcb50bc6e7db5f6555266da2bdebc038d0b390d8332fca1a9`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.7 MB (91716706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fe8f9b61e9a91d68834cb44983fcc62c76a6e35cbb6f5e88f520e020a7df7`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06379cc879a2aeb59f40fdb55741a089df2ce22bf05064b509a6400540913c8d`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3fadaa8734c178dce1ef98456b665005f2562deede3a1cd9828b2e5adb64793a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a147be5046d8de3e64bcb24918f692617ab77662f4d85e36a554fb9dda0c8d`

```dockerfile
```

-	Layers:
	-	`sha256:668f0d7b964bd87a8613e20074ed76a5967fa8b6a0fc86e1c5aff1d66c8c3470`  
		Last Modified: Wed, 16 Sep 2026 10:59:23 GMT  
		Size: 7.4 MB (7429678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7b3f71e2dce6cf6dbf6050ba9c5b9b93066b6c9df887521a714674175110d39`  
		Last Modified: Wed, 16 Sep 2026 10:59:23 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
