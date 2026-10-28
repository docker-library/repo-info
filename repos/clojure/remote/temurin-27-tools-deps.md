## `clojure:temurin-27-tools-deps`

```console
$ docker pull clojure@sha256:bcfa7e86e3b8b92e4aedcb13a0ab5f9b88676ecba43d568e176180ab8e4775fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:3a19a86d32d1aca3b0edf7cea07a3b6e47b01a7ac4a6e63eb9ab80c2968eb5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220145109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e08cafc818bd7c6ec8747e76ed953751f6f25264faf39b97c4e8de390d0be8cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:32 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:16:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:16:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:16:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:16:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7fef7b723de48cffe7c7e81557182dfcdf84442e7d5f6fb2ebd38e50fc5a00`  
		Last Modified: Wed, 28 Oct 2026 02:17:05 GMT  
		Size: 93.6 MB (93622538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0606c4f5b600343ae7e2c9de5ccdb8834f24c3f88717f462c77f31d0b54629`  
		Last Modified: Wed, 28 Oct 2026 02:17:05 GMT  
		Size: 78.0 MB (77996974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bb71e2e5e4d9455a2fbcc2d70175a1546578362695004fd44a3551b6f9f060`  
		Last Modified: Wed, 28 Oct 2026 02:17:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3deeb4ec56e892e1fc865a891d968a5411580bb0e8ccc436e7d379e8771d173a`  
		Last Modified: Wed, 28 Oct 2026 02:17:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:956e905cf14e4e7d2c74f957448d99a8d5666ef9c79c2acbcec594957f4ec724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7359486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfa3aadaa431511542d18edba15396825269ec76f936721167b9b03593772e2`

```dockerfile
```

-	Layers:
	-	`sha256:b755feabc0ca2c52842405f8518d6aec69a0cd772ef021b1342fa24dd2320f04`  
		Last Modified: Wed, 28 Oct 2026 02:17:02 GMT  
		Size: 7.3 MB (7342877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:754330afdb40dd87f4c97e140959792be7fa1e24bacbc24f04812a4083171caf`  
		Last Modified: Wed, 28 Oct 2026 02:17:02 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4aa54e0932852475d3a43135e963c5b619d507ab16a4633914e05e9c84e64ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219031872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f0d75963c2ef56d4f8984d8d88add006a39e12f19b1b884ecf974228be7050`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:24:08 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:24:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:24:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f354d8a41d3ca18034d57e364f2238566d5ae9a36e4816803d4a58ea7144bb`  
		Last Modified: Wed, 28 Oct 2026 02:24:45 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a056ae84246b7bf6765d6f7599a83d3b7883b3e44ece1b3389b80f16863cf39`  
		Last Modified: Wed, 28 Oct 2026 02:24:45 GMT  
		Size: 78.0 MB (77992540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776e22b30c541665a0a5c6f33ca60466a80f6e5537008bdb7d1f011b3e6dc2a2`  
		Last Modified: Wed, 28 Oct 2026 02:24:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5e85c10a77a7d8875e8f99e6644984a9e9c713644590e34cf02c9e8db3f0b7`  
		Last Modified: Wed, 28 Oct 2026 02:24:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:12c9670da7133965f632263236c5bfb4191e7ab38513c3259685e6268e56888f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1833211c3833fd60907c4d6833cab3b01b0b786889750784380e89e72929f93`

```dockerfile
```

-	Layers:
	-	`sha256:56353397ee83726de4cc4ec5be46ae9e4b6307b13b5ee73d468b4ca86d694b5f`  
		Last Modified: Wed, 28 Oct 2026 02:24:43 GMT  
		Size: 7.3 MB (7348661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfb0d39ab85e438cdb970a4fca7700e31d6b01b6f7254645dab9b0cc5c84322`  
		Last Modified: Wed, 28 Oct 2026 02:24:42 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:e0c346dc6d877e7a6506a6cbdf38f9fb2f76987f83e351680c903be5ef852669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.4 MB (228446552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03a23a39988e118c8dd4ff985401da2cfe1c3c13afe61252bc31965e3b02710`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:38:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:38:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:38:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:38:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:38:10 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:48:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:48:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:48:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:48:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:48:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c96af269ab4129d840654fe7def213b2af9f9ca3f8d01742555a610fa4c198b`  
		Last Modified: Wed, 28 Oct 2026 10:42:38 GMT  
		Size: 92.3 MB (92255799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae88952bc9c0629b263b50629bcee17ffb67b3d2d9936352f44a85dd8c7990d`  
		Last Modified: Wed, 28 Oct 2026 10:48:46 GMT  
		Size: 83.8 MB (83823399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de066341d1a098eae961019abd4a55d49a48bc940d569d68b88e3c065499d58`  
		Last Modified: Wed, 28 Oct 2026 10:48:41 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b0e2fb10915efd41369725303298f9a0772d65e14481b6e369416be40bbafa`  
		Last Modified: Wed, 28 Oct 2026 10:48:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:2c5f7ce75bc5b47442cac21c7e87d22c1995dd5226a341d2587fa666b6f73d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7348706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246a8f5fa7fc45c7aec1ab432edc73ee30c9b783f37a7f36c2ca9ec3252c8c05`

```dockerfile
```

-	Layers:
	-	`sha256:b82c1d9c93c2509ca9837a158ff31d523a73f380793e283c412468b01131a58c`  
		Last Modified: Wed, 28 Oct 2026 10:48:44 GMT  
		Size: 7.3 MB (7332037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d4d1b611740a5456bb07e39bd748add2b4ebff7f661f3cb3bcc80d0a090aa3`  
		Last Modified: Wed, 28 Oct 2026 10:48:43 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
