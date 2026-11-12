## `clojure:temurin-27-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:68febd8564b1171f1e82f73c211e95114b9a38d12c7dbf489ef52eb33c2dd9f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ee9691195046bc3ae227e2635b9a465e91b06e2d15866d2067570a6ff963749d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144761421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5983722daca69f1e5264470a4d66534560def6c44936fbadfedd155fb910a80f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:52:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:52:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:52:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:52:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:52:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:52:29 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:53:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:53:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:53:44 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:53:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:53:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:53:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:53:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f25e1a6b2e9a0ff67ed7c187c7c8f7561e87faf4fbb09d73312af8c47973d3`  
		Last Modified: Thu, 12 Nov 2026 00:54:03 GMT  
		Size: 93.6 MB (93647842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86566ce6ded99990ec308aae4246f45731065836b6aeb6ce4fc2ecf6f0cb6ced`  
		Last Modified: Thu, 12 Nov 2026 00:54:02 GMT  
		Size: 16.7 MB (16741335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007a2f7137b86c9e6f47c6b43bf4946f95e3d0a1ed2528b2081adb868eb4a425`  
		Last Modified: Thu, 12 Nov 2026 00:54:01 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d9dd3a51c841086b7be17f245095b8e0569c0df4cbbce53a543d8aa93856b2`  
		Last Modified: Thu, 12 Nov 2026 00:54:01 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dffcbdb220d94685af916b19afbcbcfc49b60b099a321748e03390fb20cac904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8804035a2e92365d818868e5ada897c09667734754ff52311cbdf71ee307658f`

```dockerfile
```

-	Layers:
	-	`sha256:156334b440175e49a595aa70f96c1fdc53b1ac25cf4afd83ef917c99067fbcf2`  
		Last Modified: Thu, 12 Nov 2026 00:54:01 GMT  
		Size: 2.3 MB (2335408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f243cf7fbb7b356f97ae77e1ef719dedbd0a051859cae201198470f3146d61f1`  
		Last Modified: Thu, 12 Nov 2026 00:54:01 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1d27c8a01c200db30b893568168d444b5ce72464e876d77575cb8068985fc378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144098785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13de1bcac95b4fdd915bad8300271bf2a33f74d0078d93c2c66dd8a471a581fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:08:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:08:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:08:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:08:02 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:09:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:09:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:09:21 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:09:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:09:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:09:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:09:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab5cf37c25e913233ccdc55444cd0d91515947a5136238374febff83d218213`  
		Last Modified: Thu, 12 Nov 2026 01:09:42 GMT  
		Size: 92.7 MB (92660462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b32f53ba3b615d67a4134c4e6d6d9b62058bcb16bf1cf34ba8873589df0e7de`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 16.7 MB (16708148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8431d7f3c4716e7c30e8c9ee8ad7c62bdb25aa87fe5e57ec31913f5663a74458`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb85cdcbcc180edf47576cafd8d2c19e4403e0522089a44fc3e48d3b60f0773`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6cfd0866f7df1303dc88ef5e0140ed008c9b61ec186161f1eec3af374d413018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e602b34e52b8d1efa18736b2da47371e97d724a08b397d49a1e741ac09f1a2ad`

```dockerfile
```

-	Layers:
	-	`sha256:81c682a033105d0a36a59ad13b147676cfb7add4eef8543d5ab70aad71759228`  
		Last Modified: Thu, 12 Nov 2026 01:09:40 GMT  
		Size: 2.3 MB (2335015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def058f740f25d220d87bbd194ed5b807ce9a44f2064fdc04e3cda0388e63ea9`  
		Last Modified: Thu, 12 Nov 2026 01:09:39 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9bdc752ad983e8bfea99cec704bac87b89b1d43256b2c7850fa3e49c7821edc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146888222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f351feb2ae70f6f815483390f723bbc3de0132d21c937d7785b9f1f8bd7085b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 03:02:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 03:02:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 03:02:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 03:02:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 03:02:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 03:02:13 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:05:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 03:05:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 03:05:35 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 03:05:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 03:05:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:05:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:05:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5807e19fb41af88a9628567e61acd810698106b40354a46bc50e5681495a3f`  
		Last Modified: Tue, 10 Nov 2026 03:06:14 GMT  
		Size: 91.9 MB (91925749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a42171986f9063535189c5d7a9099f327ca61b817e1d18c102b8d861a54376`  
		Last Modified: Tue, 10 Nov 2026 03:06:12 GMT  
		Size: 16.8 MB (16778678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e26f27c1e73f4c0b83d865c59d5b6af039b96f54283e846fbbfc5d4d6c36fc`  
		Last Modified: Tue, 10 Nov 2026 03:06:11 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7fd554c1c5be4e9be6b48a9768d1eff26268fa9f4f88c55766fa81efcdcc50`  
		Last Modified: Tue, 10 Nov 2026 03:06:11 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f7ee4ab83ab60a7a731f4832901b596581cf612ff6e5d4d9974a273f1ff38160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2336253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f18c7595353bad3506fc1c1dff0f6b0bf5aed68431d32741b214f600260ab6`

```dockerfile
```

-	Layers:
	-	`sha256:4e77e04aadeefeb682f9e3be9cee2fc824749ea001ef4fb22af2e74686b3727c`  
		Last Modified: Thu, 12 Nov 2026 08:45:43 GMT  
		Size: 2.3 MB (2318463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbe847a4e78c7a27f18e0aeac94fe5ea9db8a654af82893add52eb7d4107e17c`  
		Last Modified: Thu, 12 Nov 2026 08:45:43 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
