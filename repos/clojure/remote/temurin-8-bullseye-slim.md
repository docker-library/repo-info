## `clojure:temurin-8-bullseye-slim`

```console
$ docker pull clojure@sha256:c300f4ca5c2f70df68350ff25f76806ed19d750f4a8893117adcfc3273d625a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ef6b9b904291762b24bda48d06a75fd6aa7e3eaa64e6c5f5f8efe78ff6db8c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141565134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e065b86fbc17a0bf2067f3b7f0edcecd623db542716af04077ff4c4273fdc2ae`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:17:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:17:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:17:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:17:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:17:38 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:17:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:17:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:17:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23198d1d3baaceff335d97f592d36e860ffa073b929d3e7e77725231f3d3eb48`  
		Last Modified: Wed, 05 Aug 2026 01:18:06 GMT  
		Size: 55.2 MB (55198702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6168b839e2a6d4a3644dd978b55a94fdb5bac66b6c97c088e95d209b62cc8d08`  
		Last Modified: Wed, 05 Aug 2026 01:18:06 GMT  
		Size: 56.1 MB (56106166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd686bae7b00c45b61342856fa7c3980bacde98b1a952ffc44e694142a5b2171`  
		Last Modified: Wed, 05 Aug 2026 01:18:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:70642fd9c837e3f93304d8edf7f7ec7ff5c306adb2e2686a6175290dd4282a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e072bb9a3922685e9a77f115c2f70b440caef2d0bccd6df0cad52113bd3633`

```dockerfile
```

-	Layers:
	-	`sha256:f68c77108307081426bf999bd745be244047584a92be3cfb99787273e5baaff4`  
		Last Modified: Wed, 05 Aug 2026 01:18:04 GMT  
		Size: 5.4 MB (5438209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ab5aec795d40f11b1ca13bbd950796ea2fb14822b120f806919ec3819c2d4a9`  
		Last Modified: Wed, 05 Aug 2026 01:18:03 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4757d4bbce7b31510e49ed19afe3c753c8ea5e0eb93720f3cb83095073ce096c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139298685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2fc9b6d1a25b9aa1c9200002730db337700be6e57981413490034c52823e36`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:46:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:47 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:47 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510bad5977c1ca4955145c88ac8ec37481c45b9c9382ee6c2cd14dd4c859f503`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5430079b7f334400967e1244787847c457e83789f06514594897ca2473c009d4`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 56.3 MB (56276120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40c44576f4677dbfb922e0aa35537461bec10948695c6649a13a978739b4a2d`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:44470143a2afe38e2495a237779cc842bd303002a5040fef50b3e4bbf28986e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ede4565cde12c8fed7656e3c806e4a1cecf47d4afe31630b762a79391174999`

```dockerfile
```

-	Layers:
	-	`sha256:4aa678fa23ee9fc829748523068bc56d1ff5ce0a875798a849441c28c7e3e0dd`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 5.4 MB (5444641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686c6d8711f9b7cb3177ff741e51a58a537f2cb29ea6915c33407611a20218d5`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
