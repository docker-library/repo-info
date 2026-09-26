## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:7c23e53bfa5013981c9dc9ee4d64c59a5229f5830beee471b1cd7328fba857c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:16549845f6ae3eeadb3f2bf4b69cac6511e1bde07eca837fabfd2962297f5931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (154014748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82b740e3087dce588dd3f9c355a94878515e790956dd2491820ccccaac95a4e`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:19:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:19:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:19:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:19:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:19:05 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:19:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:19:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f1ac09d947c1293144af1f11ad8df2e82d9899e8f477fdb135608a2191ccc8`  
		Last Modified: Fri, 25 Sep 2026 23:19:36 GMT  
		Size: 55.2 MB (55192265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43a282ae158a6252b34144b02767d7a74df8370bf87845b60091ba3c5313dc2`  
		Last Modified: Fri, 25 Sep 2026 23:19:37 GMT  
		Size: 69.0 MB (68991420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e77c01fbbfaa835e5bab1bcd08f691e25bc3456c514bb4ba5bf7ecedf5c38c2`  
		Last Modified: Fri, 25 Sep 2026 23:19:34 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b4515c2b7ed10502d0f81de84b9c872590f06ca661138694d60442ba17f90a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b914a7698bde5f99f118a5b838c407ac0e3f41590763574c821810fefdba18`

```dockerfile
```

-	Layers:
	-	`sha256:ceffc6b03419e8d9f25718fd407bf5f749745ec4a2b2e8f0ee15282257739eae`  
		Last Modified: Fri, 25 Sep 2026 23:19:35 GMT  
		Size: 5.4 MB (5383668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fb8060805400a9c28b35261fbbecc47fb8129237a6a1c9195514f910d097d0c`  
		Last Modified: Fri, 25 Sep 2026 23:19:34 GMT  
		Size: 14.4 KB (14381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7bba15ec5bb09640ec8ceef5bd4f58077978dcf4823f5f257b86ad7d5ac916a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153253146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7890b1273c02b06a5a8b49ec9764301771bcc9ab08ca2df251485052afb58a5`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:16:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:16:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:16:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:16:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:16:56 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:17:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:17:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:17:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f1a9e2270782e3cdba54a5160dc741c6668e6cc908bc9779bd187f40cf6984`  
		Last Modified: Fri, 25 Sep 2026 23:17:32 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8c18a0e53d3f6af0a7374269c6c02bd18183ae4915facb486df1744f5289ff`  
		Last Modified: Fri, 25 Sep 2026 23:17:32 GMT  
		Size: 68.8 MB (68808536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c810a36e0eaaaf2b3690646863c39bc5f409a3fce38582f8f22567bda8d44943`  
		Last Modified: Fri, 25 Sep 2026 23:17:30 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b02d0635a7025ed67251eb8e5630c84654017a3713617fe2251901961152f137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5404629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f7bbda19075ea5f17e6e2f54d6460f38a2265bc5dbf172ebbbada78a1b6f09`

```dockerfile
```

-	Layers:
	-	`sha256:11e72608626b1d11171b71b2c0a0257618146b32964c9ee58f0778f09c4c7442`  
		Last Modified: Fri, 25 Sep 2026 23:17:30 GMT  
		Size: 5.4 MB (5390129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfefdcee23bc8f07ec1d759bf661090a5b40585b9d5799f01b8acf80a8a7a3eb`  
		Last Modified: Fri, 25 Sep 2026 23:17:29 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a6ef9be3a866e5573fd8303b21c56dbe7c2a5610d841ba138d1ca1eb0161e264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160724610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cccebfd84863f761067e009a701ba12116251753c905ec86ccf49c63622a94`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:38:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:38:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:38:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:38:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:38:00 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:38:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:38:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:38:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b0a05fa68f72ab703029de3141ab1b3e101a9ff56ca610674cf4de1a5ffef7`  
		Last Modified: Sat, 19 Sep 2026 07:39:36 GMT  
		Size: 52.7 MB (52670664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c4ec32ea54818d2213c7c8428ed582bd8146924c29eb4228c45631b7e22660`  
		Last Modified: Sat, 19 Sep 2026 07:39:36 GMT  
		Size: 74.4 MB (74412065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2b3af47695a3aceebfd706b72f0efc25618a9b305478e6e7ac39f6047a006`  
		Last Modified: Sat, 19 Sep 2026 07:39:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:14fb32edfae8795ecab54efdb8425b70484e700085525109f501e6b6cda9770a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e28150ac250edf2ebe6bb919e47a76d6e3f1514d5b5a5e6580cf6c4a8f273aa`

```dockerfile
```

-	Layers:
	-	`sha256:904dcf15c83a627291402d2776d3f898da382ae38e939c34dde35c5ba690b515`  
		Last Modified: Sat, 19 Sep 2026 07:39:33 GMT  
		Size: 5.4 MB (5388634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cf7216a4c91514259700e37e458f31b48070a55e172e818e03893657ffb79e`  
		Last Modified: Sat, 19 Sep 2026 07:39:33 GMT  
		Size: 14.4 KB (14429 bytes)  
		MIME: application/vnd.in-toto+json
