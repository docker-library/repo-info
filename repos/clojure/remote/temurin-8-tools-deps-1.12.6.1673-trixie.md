## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:bd4adc9a52560c2fc0a9a7e22cd57ba68503062078275769eb42fae1dee2a950
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:753b6230975bae4fff6e833ec771fc2a7ae3dc9943baeeec9510710edcd1f793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187170335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adcaf6264c1a87448d6cec9e16bf204c0b4a8034fa3d428857dfdbd500cc985`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:09:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:09:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:09:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:09:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:09:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:10:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:10:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:10:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb9c9104429aa1ee19327f308ec410de89447168f41c0c22a8cce857a0e0707`  
		Last Modified: Wed, 28 Oct 2026 02:10:27 GMT  
		Size: 55.2 MB (55192251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254119e736a4d240f8faa5357655ffafa7f14a8817e908debb9135445fa637ed`  
		Last Modified: Wed, 28 Oct 2026 02:10:27 GMT  
		Size: 82.6 MB (82569542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b83244d1418246066901b8143acefb13f02daf144a27c348059d38b16094e1b`  
		Last Modified: Wed, 28 Oct 2026 02:10:24 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c1933316537ef59e4dbe78668cfca1a48d32cb4254c776798e834a7f2786fd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7611444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c5edc6329bc5ea6f7aa81914f757e95d7e345da52130f621d780a846b59017`

```dockerfile
```

-	Layers:
	-	`sha256:28181747ddc4ab0ee8f6fb620a498029367bb48d1cec49d167f091edce089da9`  
		Last Modified: Wed, 28 Oct 2026 02:10:24 GMT  
		Size: 7.6 MB (7597121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb07dce9761ebbc962c8c3cb35719dbfe3eef9c0fc8395583a485fcd35aa462b`  
		Last Modified: Wed, 28 Oct 2026 02:10:24 GMT  
		Size: 14.3 KB (14323 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:354ce5585db7d2989676eff6917affd122d4581c725c07df27fe01d617975c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186424210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43a47364cedffa336e0bd36d48ee8d85146f5c902cad5293e00ae946aab0cf3`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:16:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:25 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:16:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:16:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72724aee82ab3b44d068f5ab3f2b2268f41cea2f6a80c601929471e5f62c6a7f`  
		Last Modified: Wed, 28 Oct 2026 02:17:04 GMT  
		Size: 54.3 MB (54254278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baff6e7d0eb5f0e5318f8efc3a8a0e94c05b6612d59b754ef8bdd42e12ee41f8`  
		Last Modified: Wed, 28 Oct 2026 02:17:05 GMT  
		Size: 82.4 MB (82393108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c4c33a4d9deeaa1392747a6cff3b01ddccad9362e82de48d86a3baa40adb6`  
		Last Modified: Wed, 28 Oct 2026 02:17:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cdc7262cdb7aa800d6bc144abc17e2874dd267ead4ac0f676de9896db49d6706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c09f6aa430cb1e2e0f2d63e4558c0f2ea1ee01cffad20ea97b232f45eff795d`

```dockerfile
```

-	Layers:
	-	`sha256:a08a85c35b7b99260e42f532cbdf839a33db8fc33d6aae192c69c725f6410a33`  
		Last Modified: Wed, 28 Oct 2026 02:17:02 GMT  
		Size: 7.6 MB (7604214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55049d41a7081a3ac089e4f85293f734ddbce272a89da5e70dcc3518c361b838`  
		Last Modified: Wed, 28 Oct 2026 02:17:02 GMT  
		Size: 14.4 KB (14441 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:28470080cb27fec03da1fed8db42a4eb8a00f668d6c55bba3c16837e002b73ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193872626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2b3ee1a5d0ac910527404f5f539ac1e8faa24c4f0fbd309c53141b889911ed`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 09:53:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:53:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:53:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:53:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:53:52 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:54:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 09:55:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 09:55:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b4f57d19c91cd2be6fc6bca93c05d753c91643eb4abc5c6ed73c78d398e6a5`  
		Last Modified: Wed, 21 Oct 2026 09:55:56 GMT  
		Size: 52.7 MB (52667105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d162441e21832398cdd13fb2bb6e193344c810af1b9a585004e22476ef8f7a4`  
		Last Modified: Wed, 21 Oct 2026 09:55:57 GMT  
		Size: 88.0 MB (87997297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7c2a82e37c119958cda53bdb9cdb0ed25c983a6fdb78868d6d951ec9878930`  
		Last Modified: Wed, 21 Oct 2026 09:55:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d7a1897acdaca0f6c0389927803289d8872f9a1d786100550b6312ff7390d34a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7617283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6c1991d2ee4b0fdb66353fcb00e3e34a9db03098e5b05276b2225ad57c98cf`

```dockerfile
```

-	Layers:
	-	`sha256:a87a9150542c835c68af7e37398a67ba585577cfae19d05590d053a87a4d0952`  
		Last Modified: Wed, 21 Oct 2026 09:55:54 GMT  
		Size: 7.6 MB (7602911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86751ea0b70e5218dc8f6b255c1e5acb46a37101d6a0bba0a65f736d42eb98b8`  
		Last Modified: Wed, 21 Oct 2026 09:55:53 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
