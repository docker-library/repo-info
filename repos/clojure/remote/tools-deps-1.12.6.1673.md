## `clojure:tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:75422c9a066fa314d5b03195451e1d527b60f2fedfd37c05caf58bf67a5a836a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:e8132047c6c5b4c1fa37059d55886902e28dbe2a41d192a78d8589774c25b7bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219284119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d716def0fbb9af21cd80f31e296adeca5237c7c24345531abe7629ac240c4b3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:03:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:22 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:37 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5141fb09445e66aec16e28470c524ec37ca340091e961a242173b4432c0220`  
		Last Modified: Fri, 04 Sep 2026 00:03:59 GMT  
		Size: 92.6 MB (92615071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64eaf27e2620577c8935980e2eeceeeb0bf92389c436b395227c832ba2ee90d`  
		Last Modified: Fri, 04 Sep 2026 00:03:59 GMT  
		Size: 78.2 MB (78170643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d56532aa0a01496fad3c813bb14f221fc50cffb7903622be4152fbb598593d9`  
		Last Modified: Fri, 04 Sep 2026 00:03:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8402ea2502a7ccfc5760b56d667dea7be76397bdbce94d7022e2ba8bbd5497c`  
		Last Modified: Fri, 04 Sep 2026 00:03:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:a05a7d1e55d95518cdaea008ebee4a4500b84da9a005cc0d3813ad007e5ee173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01246b36729964c8054966d7a1b5a06975ab519e3ebc9beff9020c145e64d91c`

```dockerfile
```

-	Layers:
	-	`sha256:476c1d066b085581316761076dfbcf17816ed2b5a774c2d0b998411c2af7be43`  
		Last Modified: Fri, 04 Sep 2026 00:03:56 GMT  
		Size: 7.4 MB (7350767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3fe211478569404b0b39981173eb8a92cfefef2180efcbcf487909d39199fd3`  
		Last Modified: Fri, 04 Sep 2026 00:03:56 GMT  
		Size: 17.9 KB (17924 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:302463e8d57a5aaab532ee5129850bdd755e351ad5adcf9298c25eb5cdb5aa44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218087053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7b1236cb916d4b312270435b399c939ffadcadb5a484a7f8dd1a53c153f729`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:07:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:58 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:12 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e85980aa2c450c2406e164b700630b5a7a5c8040d9125798be1823bca17c972e`  
		Last Modified: Fri, 04 Sep 2026 00:08:34 GMT  
		Size: 91.5 MB (91532219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce73e4a3d2eb993456a9809d101c10afee0b102ffc66d6c505aad54f2fdda29`  
		Last Modified: Fri, 04 Sep 2026 00:08:34 GMT  
		Size: 78.2 MB (78170143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcbe3f6c83d8f206bf067f36aa5a28db88a31a1bcfd495d9cec5650a768ff73`  
		Last Modified: Fri, 04 Sep 2026 00:08:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0a4ac0b6182e6e64f61b3a60a08860e9aacd42bf86d8c254003a61d27c8603`  
		Last Modified: Fri, 04 Sep 2026 00:08:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:b2e7cd38929c9c7a80382cce9b119645889fd09c8bbdd3cb1ace81656c5dbd43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7374714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fed509e88d9f7dd93609556b6a0e81dfe6986269a57830c8b5af76b6eb878af`

```dockerfile
```

-	Layers:
	-	`sha256:88cf15c44499d1228c0ab62cbd61e791ffc1e4f8360f2bd6eb9b2a45827fd0cc`  
		Last Modified: Fri, 04 Sep 2026 00:08:31 GMT  
		Size: 7.4 MB (7356599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e25c95dcb116405ae41eba31e0e5cd641ce1d1d57043df4bc9460339705820ed`  
		Last Modified: Fri, 04 Sep 2026 00:08:30 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:31d40b7962b1fb4e801e418c9d4179b9de23fa7426e2c2f5bf6a275a6fa7704b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227583423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732f55cece29b890dbea593361d30c3c339c5d480bc6f67e084cb387d77bd584`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 03 Sep 2026 23:58:55 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:27:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:27:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3773e458eb79072928ad9cf963ff5e5431e28ee9d9937b28b7e31b8272cf8e1`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 91.3 MB (91255825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c742bce4507df143404817b0a921613db4d395802f505b90b406d69b2e1502de`  
		Last Modified: Fri, 04 Sep 2026 00:28:09 GMT  
		Size: 84.0 MB (83984795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb71c5ef1fa9106135e1d9670c8069ef6a2eff46170520974311a80a3a39343`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bb0942b218e1e0e998a09d4a691081e231f6ba131232447ba382c4df172c07`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:ff5ee4f85804d842139d9eb78edc59d911e9fc3403d365d6793c1f724e99a536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7356387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d34e9a599dae381d23debba4159cfce13514cdccfa4399a08ec912f302471c`

```dockerfile
```

-	Layers:
	-	`sha256:29ee88a794695f236a70f17fa47354a0319e0de23c7365f01dff005a147e4667`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 7.3 MB (7339331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2840ecf5f905f546e89350bb6e743f322840ef9bf903d9c525a788bcf131c70`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 17.1 KB (17056 bytes)  
		MIME: application/vnd.in-toto+json
