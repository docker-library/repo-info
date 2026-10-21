## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:06c74bc21124e5411fd76726f0a58d899bd09c5b47930697d9e5257595a4ed28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a85cd6765c8682fc87986df2189793a7f269e9b32def47a10d109a31638daec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (154026277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9ad85e39769936909802802f65e6d772ace9bed2c32bb5677d2dff66364cfc5`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:15:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:15:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:15:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:15:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:15:33 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:15:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:15:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:15:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78ccc07fdd008d063e755d10d133699b6d0f69ec61c4919800473595632ece8`  
		Last Modified: Wed, 21 Oct 2026 01:16:08 GMT  
		Size: 55.2 MB (55192249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e7ba517d0aa11152dd500e5f3a0b8bffbb863e4efafeb1c910070203c12087`  
		Last Modified: Wed, 21 Oct 2026 01:16:08 GMT  
		Size: 69.0 MB (68989803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22361d728e6776f8934ac6f588b4d84733e8d8c077fe18064cc4c23b20fe1057`  
		Last Modified: Wed, 21 Oct 2026 01:16:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08821889bd9b5695e3014553b7c317383ec2a07278dddcf9b926973fd19cedbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35de5b4af11c4080a021b5468100ed6e047f0b8b56c74e78dfbdef8f0440240`

```dockerfile
```

-	Layers:
	-	`sha256:351aefcc840c75775de030535205edb5f4f57d6c75701e5acad51b64054e0b68`  
		Last Modified: Wed, 21 Oct 2026 01:16:06 GMT  
		Size: 5.4 MB (5382391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:496b1bcb15674fa2a40cb6f7cf3c16dd2c6288b2b80f7d9e02b9d4ee17f41853`  
		Last Modified: Wed, 21 Oct 2026 01:16:05 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:09dcbda1019196d717dce9deafcc6ed0697669a402fb6c2c03768ee7cec2e038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153261045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce56b80594f5554a62d85909604523030a51c44523bbc6fb1bd7bd8e9061fb0`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:22:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:22:27 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:22:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:22:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5ec8559d7fbeacfcd864f5dd38ab6cd3b6dfcfc9519b9646d0dc3e084d4ace`  
		Last Modified: Wed, 21 Oct 2026 01:23:03 GMT  
		Size: 54.3 MB (54254268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664dce8781e4ed3070ee1ead62fa81a9424a114c3360597515c976cf52faab00`  
		Last Modified: Wed, 21 Oct 2026 01:23:03 GMT  
		Size: 68.8 MB (68805653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5085b82c64255c13d1771d20169591ae739cb9dc01ca46b650f75606cf04cf`  
		Last Modified: Wed, 21 Oct 2026 01:23:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d43a7841f555e516863e594449bf514e5bcc40be07da31568ce3dabbda6951d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55c7ced1bae5a3191426a8e933f76b79159ed46d779f9b40ed16f311039b4eb`

```dockerfile
```

-	Layers:
	-	`sha256:033e6354952dc776a5edabc9dfce83461bdc005f3f6855b8a7725cf199f9b033`  
		Last Modified: Wed, 21 Oct 2026 01:23:01 GMT  
		Size: 5.4 MB (5388852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bdbf8af17946e1223de40ac4a49d06856b41647a1312b7f9ff995db086568a1`  
		Last Modified: Wed, 21 Oct 2026 01:23:00 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:07b09d254cf914e8da2c15da7f2eb375ab07fbd3bb355e85d3cfd3ff1fb5228a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160736941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ac3bd431920ab9ed7d524ee14a53ab1a29144efee7d451e9c6801140ef9e01`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:13:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:13:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:13:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:13:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:13:37 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:15:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:15:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:15:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676b269510085c10863f6498050caf72ea9283125d92dccb0c52df423801a444`  
		Last Modified: Sat, 17 Oct 2026 05:15:56 GMT  
		Size: 52.7 MB (52667127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f6d92b48775a25fecc15b3bdf5f0488d6955f248834f2352c88ec93ef73cb7`  
		Last Modified: Sat, 17 Oct 2026 05:15:56 GMT  
		Size: 74.4 MB (74417569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd4be398f8ecb3cf1d08321d0bf9b098ff3e4d8010ba9b6ac198e6cb330f4fe`  
		Last Modified: Sat, 17 Oct 2026 05:15:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e396eb30179afa167df818eba78876443d5faf5bc0241595aebeb5dd2f650bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94f2d072557afcca911baae088b82d909950fec9e3e3b291e3860e65c878f26`

```dockerfile
```

-	Layers:
	-	`sha256:14f2457086aacb717ba127cde25ea454ded040fadf4e49da2612592366567053`  
		Last Modified: Sat, 17 Oct 2026 05:15:54 GMT  
		Size: 5.4 MB (5388634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a60313af2578ec900bba10a90fd5377a00d9e0768a1ca4c9aa4b2f1826a5094c`  
		Last Modified: Sat, 17 Oct 2026 05:15:53 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
