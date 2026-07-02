## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:84f313a8db5ef06db26c761b161c98101dc7319f4d823c8b1cd3f72b16a11276
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

### `clojure:temurin-17-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e5635117744a80af8345a5f7019acc66d94e03fa2f83e5e414b9cd34c5e69292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240788104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead5e56a0f4128c3e6b7e021559c00d38350e6b66c2a8caf7b773d27c9bb541b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:50:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:50 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:50:50 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:51:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:51:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7e98e973e42ded9c6dec96e1f522bb1287afad55fb3ece80bcc7b53570a00c`  
		Last Modified: Thu, 02 Jul 2026 05:51:28 GMT  
		Size: 145.9 MB (145906292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25bf5426ac2acdf4cd03ef99c4f0ab1ab94b9233729223b906e4fbcb15791c85`  
		Last Modified: Thu, 02 Jul 2026 05:51:27 GMT  
		Size: 66.6 MB (66643130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64c8df171194974dd9bbff3fff094dec6479fb82186d26070daac5570466484`  
		Last Modified: Thu, 02 Jul 2026 05:51:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2287107ad4ea2ec7656e680a41fe02f5f557eb39752ae47121aa2ebcb31eb09a`  
		Last Modified: Thu, 02 Jul 2026 05:51:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ca0e5a61e67afa83e42bc70cafd0ca83d247e1e3599b3ac516da66d677ae2ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5129989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449ea186cbb6c61b2443c9ca5c86cb7771c3b390117bb3562af7c15a1e6ac7ed`

```dockerfile
```

-	Layers:
	-	`sha256:d8326c0e55ef720ae81fdf5ea5840622cd079ffafa26d10858dee0c3bca50437`  
		Last Modified: Thu, 02 Jul 2026 05:51:24 GMT  
		Size: 5.1 MB (5113999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d55c33de748dc806985d3efdd10d70bb134ac257724acb5eaac6f301312f8247`  
		Last Modified: Thu, 02 Jul 2026 05:51:24 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5cedbe685a8d3a52c2c9c076d27125530f0af8b9f5edff7a970967d1d07d075f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239490890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb516ab4d8c40fcdae0fe7ea548f2b5847d18e61b180597f1a3819469627b45d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:51:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:51:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:51:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:51:08 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:08 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:51:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:51:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:22 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bcc149fbda0c928b08dc18eaba48ef16fd042d18593ad27243920b51bdfac3`  
		Last Modified: Thu, 02 Jul 2026 05:51:44 GMT  
		Size: 144.7 MB (144724296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6063e9269b087bbe23fabec69b34fc1612f596c2d14881047d473ed4ab22f17d`  
		Last Modified: Thu, 02 Jul 2026 05:51:43 GMT  
		Size: 66.6 MB (66643132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74aeb95537ea5e8099939dc04c88908e7fd0f2a3d5c644947e992ee12cfecbd`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d289a81368727fccf1421c0c9e0548a964e5db697229d0c08dafcb15f478f87f`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:776f8f478bcdd4fa78f484792fa9bb27ae6bca078d0b3e35d79b0a3a7fc55254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3765a465e95509249f17f804717652e1dae0330651bba0d544046d27f7d79d12`

```dockerfile
```

-	Layers:
	-	`sha256:80a3b27024c794076b45fec62e9c9837f4b37ea62b965a72c803dce873857dae`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 5.1 MB (5119760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95aeffe34c39f84cb11a6464497fee1a80a4f4867c9feaf1ae9f4254e7bdddaf`  
		Last Modified: Thu, 02 Jul 2026 05:51:40 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2908f71d85e9cdcdaed000d1565a330675e7d43df95111bb891045ccf6511beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250325145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1c009c8d758fe2a6cd14527bf2093b0da32f417d8802356ac545ba769717fd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:06:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:06:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:06:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:06:31 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:06:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:16:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:16:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:16:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:16:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:16:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7229c8e0b663baf447dddd27c15f1ceaae1559bc107cce4efdf074f13bf0e26d`  
		Last Modified: Thu, 02 Jul 2026 07:09:31 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e532e910f9cbd6995d005277beeb0c71bdc79e385cd4fbd6c97e71c467c336c`  
		Last Modified: Thu, 02 Jul 2026 07:17:13 GMT  
		Size: 72.5 MB (72475940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabfb1cd3cfe602193cb0b346b501d3ddd8330205ca79a8dedd913045f62f6f4`  
		Last Modified: Thu, 02 Jul 2026 07:17:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c386d5e14249ef8eacc1ca55f31aca6ac9cda48a3938029ef0849ddc9d438885`  
		Last Modified: Thu, 02 Jul 2026 07:17:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:33715d1ce6c1591e222aaaec1cbdc5f6db0c006eb9a4731a730c0f76ed0f11e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ca64b7c8e1c52395f25abe7ed6f187b43378def28d73285b82534c4fe64e2b`

```dockerfile
```

-	Layers:
	-	`sha256:d7a7235374ff28395fced4694b4a40906ab20fb94ae6a722ac4c0125ae3fe2b6`  
		Last Modified: Thu, 02 Jul 2026 07:17:11 GMT  
		Size: 5.1 MB (5119157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ed0461fa878ff8dcb671f85716c2e9996f6ed0ec607d778e370de7ac687d892`  
		Last Modified: Thu, 02 Jul 2026 07:17:10 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:ad09bc498a35ddd03c5de80169ac3c7e18a9c0cd83ed6ae0256de2369c5c1678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.3 MB (228257293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8a7663b4399fc8cdda59a3015bb6cd3f1c456c3c8b5cdd858516aa381baa98`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:48:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:48:34 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:50:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:50:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c36d6cd847fcae8e735f6766ef856f258130017efd75d3a8cca62c057bb5939`  
		Last Modified: Thu, 02 Jul 2026 05:50:05 GMT  
		Size: 135.9 MB (135910439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c319c63f72a3aa569b79ec454fbbddd977639cde98a00e407d33ea9bf6bc99d`  
		Last Modified: Thu, 02 Jul 2026 05:50:58 GMT  
		Size: 65.5 MB (65452225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701309178cc02b5217d92d750aa84b76665ab0a91c747ca1fd45fed2a06cc735`  
		Last Modified: Thu, 02 Jul 2026 05:50:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732df9d9a5d6645a7e6830748717245ff13d5e39a97297dd4e8a4faebc9c71b3`  
		Last Modified: Thu, 02 Jul 2026 05:50:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cbe2dc60f1f02b740233d622170b1af3ca2e932e985b9b933fb779eb43704ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5121310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9b9f7c0b8d5ba250413eeed57b5d1ffa1cfc6f76fcd1bd474048e6b297d193`

```dockerfile
```

-	Layers:
	-	`sha256:123f0451faf8f3686a25515216b472e97e61204f353033437c60533b5838cc02`  
		Last Modified: Thu, 02 Jul 2026 05:50:56 GMT  
		Size: 5.1 MB (5105320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:077e185d21259c2d76384408384907bd86e5927c9234335e49029b43ead875ee`  
		Last Modified: Thu, 02 Jul 2026 05:50:56 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
