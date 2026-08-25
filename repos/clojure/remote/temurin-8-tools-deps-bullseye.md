## `clojure:temurin-8-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:fb87863e3076464ae6d92dec73b1c65abb49d47997ecc18257c281fe5ae814be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:a06792fdc35ef9ca2160e944cd6e13e5ea6e86c9464ddd2608caf321a68a0d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175468736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928f6dd3057592c213f01aef2c78ec91b751103bf5bb88bb4467815d50ccaca6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:24:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:24:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:24:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:24:47 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:24:47 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:25:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:25:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:25:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236b95339dba9970b6fb90211b0173ab61ba54bbb5ac13753ab2ea417f76ee1d`  
		Last Modified: Tue, 25 Aug 2026 01:25:17 GMT  
		Size: 55.2 MB (55164391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1c7e6edf2385a1c5dbb3716d0e527621a063693a7d2c634da3fc48b93fff91`  
		Last Modified: Tue, 25 Aug 2026 01:25:17 GMT  
		Size: 66.5 MB (66526306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6c0405113f7843eaf14c3e2fd27c3a5926efaef6511834bfc8f9f68eb0542d`  
		Last Modified: Tue, 25 Aug 2026 01:25:14 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ae559fcaf358233f7ce18b12b84c235cb1b8514fcad495939a2aafbdfd1b0506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7545359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a72f209544ed6b5c7bfa4bb19b584dcfa50d0ce529f4c3a39ded6bce2964c8d`

```dockerfile
```

-	Layers:
	-	`sha256:17793e2ef34cc0ed53d1635c477fa082feec1fb3af03f74c818d8bce4c8bb07c`  
		Last Modified: Tue, 25 Aug 2026 01:25:15 GMT  
		Size: 7.5 MB (7531012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d38fb00573804150ce7b7d62e740bbdd798ae0867c0321f3d6e0190e58ad82b`  
		Last Modified: Tue, 25 Aug 2026 01:25:14 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:df255681c3f1fbd75a41d797fecde658bb75ce5c7f6da16699422bb0fd12e613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173215429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c289e3e51f5bf2d5c5d1579a11f5465fa0063a023d328bb8669aa499f735ca`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:29:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:29:03 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:29:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:29:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb1ebbb702f90ed9f7152d35887a3f97e9ec77389fe269f5ef5b78cb8e33924`  
		Last Modified: Tue, 25 Aug 2026 01:29:35 GMT  
		Size: 54.3 MB (54262768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae653c1265c7a82b416bb5be90c1a6bdf0a431572bf48d010d95d6861a45d6fd`  
		Last Modified: Tue, 25 Aug 2026 01:29:36 GMT  
		Size: 66.7 MB (66690675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c78f94253a751f845960bc5ead7230716740811705cb884397612c193456500`  
		Last Modified: Tue, 25 Aug 2026 01:29:33 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:e23261cee19318074f52d3ca7eb7a37d89a9b218c6e441acefa5d322f0dbd8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7551277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86b4388c0db3e8545b3442edcb19a42afbfa2336dd330d19c1d8e87b09bb5ac`

```dockerfile
```

-	Layers:
	-	`sha256:ac654be6dc427b8f704276660f11fca84c7ea299d6687dfb0078492b17544e56`  
		Last Modified: Tue, 25 Aug 2026 01:29:33 GMT  
		Size: 7.5 MB (7536811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92afc07bb671685e10284aadbfa058a89a0b8a9c84aa409e543035fa4c24909e`  
		Last Modified: Tue, 25 Aug 2026 01:29:33 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
