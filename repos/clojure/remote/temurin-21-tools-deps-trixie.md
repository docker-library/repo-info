## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:290c9ee46df87c016e23cf6cad3bc93e5ad7be0771cb79a9b858569939e304c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:5997bce35d3f0ec65ea2b4369c7e3f2e19f688a6d06205311a0527b6a46e30c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290096071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44ca49320e3b2559f71e5071ea0c651f9761e981b3b0a4d5b36bae48e3edac0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:13:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:13:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:13:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:13:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:13:22 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:13:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:13:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb77ba0a8f9add5ca05627a6795daa6edaf8f4aea77abd17fa2f9414bd839534`  
		Last Modified: Wed, 28 Oct 2026 02:14:04 GMT  
		Size: 158.1 MB (158117470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329755551046a3aedce3ed1f4c33e12e99010013ae45b073532e6a91df40fad6`  
		Last Modified: Wed, 28 Oct 2026 02:14:03 GMT  
		Size: 82.6 MB (82569662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f16436387f55914ed1a75ac389992d5cbb13bd09e8c5de28b1dd593f1d06abd`  
		Last Modified: Wed, 28 Oct 2026 02:14:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6b487982872490dc62a0ae1d57de5615dcb8ce58940361987de321f9ccd1ed`  
		Last Modified: Wed, 28 Oct 2026 02:14:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c0234b7ab577275a3b7e93503a2286c7eda295e5d9142a9eea94506f99586d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e954feff5ec463f4b63b8095e14151b608c0bb4a4a5609728c9ec6e2c0044af`

```dockerfile
```

-	Layers:
	-	`sha256:86718f7ea55b49ccddd497ef5cc2e3c7af29ccd619c1a50a6e6f2ac1edf2818f`  
		Last Modified: Wed, 28 Oct 2026 02:14:00 GMT  
		Size: 7.5 MB (7478619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21a9f3d7c303291381ae55ccb7c8ace747cd815b443435b07898858dcd397eab`  
		Last Modified: Wed, 28 Oct 2026 02:14:00 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3f626cbc193be67c97f0058a155a0a95a391a89ed799ed24288656e8e75d23a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288570496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85704abf50ffeda23d1ffed222755b3142293bab09ea23239ae3a980bfe3fe95`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:20:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:20:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:20:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:20:27 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:20:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:20:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c90cfce8ad2c9d2f4f6e92b445476bbd2dc80488dbb9d888bfce09e3d693f11`  
		Last Modified: Wed, 28 Oct 2026 02:21:08 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38652348c3bddcac3158cbc6fcd1ac550a36194521ee30374e881b59d61e2431`  
		Last Modified: Wed, 28 Oct 2026 02:21:07 GMT  
		Size: 82.4 MB (82392597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca16f4f38ed98fd8f423f7851e0ae161f4ed6ad3f5e74303d8ccad8853efb8d`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762de98fab86360342796c7a509fe04bcbbff14570a1db450959a877078bad61`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6f649f7d518ef816dc97094098935261392ba446db9bda04e41fd285e4b3ae96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2600288936ce98aca190dd1b6065eea2d32be19db45e52ab7d9c4ab6eeea7855`

```dockerfile
```

-	Layers:
	-	`sha256:090e02d1fc5eb131ee6fd229c54d78ab408b222ea2ea37439e47ee4b74fcb0ec`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 7.5 MB (7485012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eed4f753fc0034291dc29edf5d48522bafed9cb6642e59032a65d54a0e4c3183`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:4689baf89f913f910eedef665317a44683b59fe9fa555112ca382de0a2163eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299503173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5af1a23f80a5c9de624a8ec73d2a9f5ceef50e7540d43291855f6eab3bb7ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:06:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:06:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:06:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:06:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:06:36 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:14:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:14:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:14:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:14:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:14:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b0cbb2f460ee06d62a8a618c39ccba555be71a056744830d2dee60ef7ca576`  
		Last Modified: Wed, 28 Oct 2026 10:11:12 GMT  
		Size: 158.3 MB (158282631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176cae3f65695b6bec5c3a955543cff4e635021224174d23901003507cfbe8ca`  
		Last Modified: Wed, 28 Oct 2026 10:15:06 GMT  
		Size: 88.0 MB (87997254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36cf327434d78ce274b41c8cf96599dad6d1265276e8f0d1b7f2cc5371043db7`  
		Last Modified: Wed, 28 Oct 2026 10:15:04 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e56dda2db9d6b7da5b51ce567b4d5a6ed277af01033bad06da8c32b33e1eb79`  
		Last Modified: Wed, 28 Oct 2026 10:15:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4bdf7c4b68633b36a2213212f57da9adb3a6031ece428fed966d8d595ce8b1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1068672687f196aa09c13356b98b878a9eecd120521afd113c7b36ffc59bf6`

```dockerfile
```

-	Layers:
	-	`sha256:c5a2d780eaa143f3ad57af77c154d8b6996c0eaff1f8e63b11f4197217f2d7bd`  
		Last Modified: Wed, 28 Oct 2026 10:15:04 GMT  
		Size: 7.5 MB (7483036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:191da0882603bd01353dd8b8b02e7b42fb48204f0bb619cb74d2f9263dff0921`  
		Last Modified: Wed, 28 Oct 2026 10:15:04 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
