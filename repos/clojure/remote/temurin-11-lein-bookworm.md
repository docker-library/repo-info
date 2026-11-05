## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:de1d920453c3e20851797b5e44a1d914973ae19d54c298138fd4a8b75b9f4c35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:bfdd6907459b1f2f91603ed16efbf882acbb854f1956e5f54255afde2736a8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219038869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50af7541a9a8e2e79ec234672da6d8f476a94d06d1ba28bc19b36c4d543c0be3`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:06:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:06:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:06:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:06:53 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:06:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:06:53 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:08:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:08:01 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:08:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:08:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4601a2e8a96ea8ab95f5aa1adbde2dcc350fdc5b18e944f71406ae3124b2cb7`  
		Last Modified: Thu, 05 Nov 2026 08:08:23 GMT  
		Size: 145.9 MB (145864286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359d8209deb6d9aa684961516b82f5b219ecc1549e5185e6f9dfc2391e31b440`  
		Last Modified: Thu, 05 Nov 2026 08:08:20 GMT  
		Size: 20.1 MB (20132877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e235a32123963a8e35d9d4335246b58f8f1c03f87fb8bb7aac08a68aaa499b7e`  
		Last Modified: Thu, 05 Nov 2026 08:08:19 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0fa7c76f326d1868643a8e4e116d9eed90fdc4804a9e7265fbaea19cd28be241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c30e2aa398db00f570117ef69e7b033d328e33c7ff430b1d62c2c460cca3a3f`

```dockerfile
```

-	Layers:
	-	`sha256:61f0b3bd2b16f5bbd04ffa3ef265f2325072472f50aac7765e6693b5d4f9ef34`  
		Last Modified: Thu, 05 Nov 2026 08:08:19 GMT  
		Size: 4.3 MB (4307520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06475be20a783b4585ebbb46fd7ccb905365ec05cabe0c635bf01642d900fa45`  
		Last Modified: Thu, 05 Nov 2026 08:08:19 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d26a5daa2afc39f1e2c2835ab1bfb60159c32ddb1b008b055b67f16c7d0cb3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215471517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ccf68dd049b8c38304fdb52124ad686d509fa6da3cf84e621d7b59722f68a9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:16:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:16:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:16:06 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:17:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:17:18 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:17:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:17:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3957e8fffa3bbc28362d1ba07ce3f153f55fd4b9e075e66bd4c2f42d363974d6`  
		Last Modified: Thu, 05 Nov 2026 08:17:41 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045a76b213d43712efd8985252f1ee9b5d449b5bee246c78454895626f932104`  
		Last Modified: Thu, 05 Nov 2026 08:17:38 GMT  
		Size: 20.0 MB (19967218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814c802127fa70aab1428553173dcf171deff46e687337ead7ca37b610054544`  
		Last Modified: Thu, 05 Nov 2026 08:17:37 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:61bab40a421815755f00e63e1cdbab821b4c31e5cf963abf6ffa646c099f2dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b3eccb3a9fc7cab305c59e8e90fd37d2959753b2a749f2d5806d3a89a82a0a`

```dockerfile
```

-	Layers:
	-	`sha256:203c154b51bd65ee23f36971c698cdd5011b74edf8a455abc07221f472683faf`  
		Last Modified: Thu, 05 Nov 2026 08:17:37 GMT  
		Size: 4.3 MB (4307753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daa433d089447f0e60e0c8fd3d81183a404330051bb26993217755e0cf439945`  
		Last Modified: Thu, 05 Nov 2026 08:17:37 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:e3743a19fd9f73b54c9dac44aea7a4348cf807dfe8a7d45ab234e40cf0aaf0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210335646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09804065f012cbe3cff7e750251397268b8d1b2652db6c0f7bf5f4a8e7aa5815`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:24:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:24:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:24:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:24:11 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:24:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:24:11 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:27:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:27:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:27:26 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:27:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:27:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634d5a75a15edda80751c6723060a79fd211a13d718679a6fe04dbfa328a9d01`  
		Last Modified: Thu, 05 Nov 2026 15:28:08 GMT  
		Size: 133.1 MB (133095013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87a16a4fe86f13a88551e276ca3fc7b88558a214c96cd244a87f94057d2266f`  
		Last Modified: Thu, 05 Nov 2026 15:28:05 GMT  
		Size: 20.4 MB (20356761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f3e0da8e72cd360a18ce19fa8b77e2224e988ad67472ba846d2de503f9ab02`  
		Last Modified: Thu, 05 Nov 2026 15:28:05 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e38305457933f465fb54f2b7f70c8097442eeea3a22c18886fb5a5abc0f8cedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed76fe33ad0d2684502d8cc2cf399c1c415dbef212f85f62617a4261d2b020d`

```dockerfile
```

-	Layers:
	-	`sha256:9660c181ab72de5278f5e519fc100b99cd1da532642bd1f939d3ea7da02421ef`  
		Last Modified: Thu, 05 Nov 2026 15:28:05 GMT  
		Size: 4.3 MB (4308766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:938bd9ad3af1f86e81278e90fbbb05ed07acb0e62461577773aee30b151e6503`  
		Last Modified: Thu, 05 Nov 2026 15:28:04 GMT  
		Size: 15.8 KB (15791 bytes)  
		MIME: application/vnd.in-toto+json
