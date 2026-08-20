## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:8faef1a5226d74592af2dcb2515fa862741ed9db73b53c9db8d4a2b3fb1ac961
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

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9720df8d4eabb7191fe1b098df14bb4a8d9524f723ea3e315dfcbdc72a70c23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196945326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56710c97032329ae57b26eb12f0e12641ec9ac55945fbb745b7c24814ee3947`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:44:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:44:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:44:04 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:45:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:45:17 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:45:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:45:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f821f45374bcfb6e0db43c954bc6f85f6d08c47f0aab742ac18debedaa69b9cf`  
		Last Modified: Tue, 18 Aug 2026 20:45:39 GMT  
		Size: 145.9 MB (145905453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eafe0a7f3260413eb578bda798e180cc97a993e9a2a34a017d4ae35a1354b52c`  
		Last Modified: Tue, 18 Aug 2026 20:45:36 GMT  
		Size: 16.7 MB (16743478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18edad8d31a78c6bcabd10fbbbf428b2324a087f906ed87cdfcb1d8e4ad61bb`  
		Last Modified: Tue, 18 Aug 2026 20:45:36 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a078ad0a2af3585f6e2d896c2d74d3b3f4ce933ce0a16a0691d97925a67779`  
		Last Modified: Tue, 18 Aug 2026 20:45:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:929dbae9da34e0b08a208a509d5888a914d4c549c10050b6ecf705c91b3c7f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e28da5056af42ccf6cee126f27df41315db0d3f3551ee601bd60c985d45016b`

```dockerfile
```

-	Layers:
	-	`sha256:56a5f6a72907c551ae1c37d636459effb0783278c912f4791bd8796d304a02db`  
		Last Modified: Tue, 18 Aug 2026 20:45:36 GMT  
		Size: 2.4 MB (2367117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48c3b9e113a24440a81f79fc63b6fff0c18a5fca10dad22f771b2dde2a0bb0e1`  
		Last Modified: Tue, 18 Aug 2026 20:45:35 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:145dae39fabbad6b3932b928a6e0dbb203f901ef4d68148976bf4278ce2e2b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196094758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33fcc7eec07b145760dff3607850e3fcb442398476d1cce23d53c405c924cabc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:44:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:44:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:44:17 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:45:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:45:32 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:45:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:45:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6988eb93bea3433821a955049de261476f35cb47e59e918714598588282b3c43`  
		Last Modified: Tue, 18 Aug 2026 20:45:54 GMT  
		Size: 144.7 MB (144724297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81b910c04e39bf79441f5280081f5d76704063b79c15547ffd8b90814a2c759`  
		Last Modified: Tue, 18 Aug 2026 20:45:51 GMT  
		Size: 16.7 MB (16711253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b31a3cc709dbc853ade5e9b49b1a7fd0916a97102bafaff910614da0fd3942a`  
		Last Modified: Tue, 18 Aug 2026 20:45:50 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db42d19d1342482b2733d35e5bcf28513fa7c9847de4f8a9b556e0b0c0b3773`  
		Last Modified: Tue, 18 Aug 2026 20:45:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:878ca4c7573e25d75c0e6c719852ad644ab02a0a3a4c92f27c90cbd5d7518513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe51611bf4c2cc393cf0fcc765a7eed3366d4878e8fc271205d54b1d515e5b65`

```dockerfile
```

-	Layers:
	-	`sha256:0ed13202265fec36d8f0006e1d3e2e0f91cba233c35346e8a2d991f19968b0cc`  
		Last Modified: Tue, 18 Aug 2026 20:45:50 GMT  
		Size: 2.4 MB (2366727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0936a533eafaa7c2f1d7f0021ab419e5c2a73d48bfb63387e7e717685e7cbc35`  
		Last Modified: Tue, 18 Aug 2026 20:45:50 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a164f64829a571526bfc894ece701a83309b978f34b3d5218c66f91cdf96d511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200665428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b009c09f4f0c03842c1b238b27ef77743fa7dcc4b0627db1b3d8cdd8366952`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:10:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:10:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:10:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:10:51 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:10:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:10:51 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:13:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:13:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:13:46 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:13:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:13:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:13:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:13:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4812eed76f046ddff5f5bf2b62f636d086cad57871ef4e1dffa17310290708e`  
		Last Modified: Thu, 20 Aug 2026 01:14:28 GMT  
		Size: 145.8 MB (145766231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05854a675a15a81209c2e71d9086afbff2065be730db5a8db6e943f3cf67f9`  
		Last Modified: Thu, 20 Aug 2026 01:14:25 GMT  
		Size: 16.8 MB (16782228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d86f362505f3dbd992c756d26b0352db49cffa71a7609b2a5b784b0bd62773`  
		Last Modified: Thu, 20 Aug 2026 01:14:25 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06bf9e49083722e89108e03bf3ca073919088093df2208b4e98b12caf18e274e`  
		Last Modified: Thu, 20 Aug 2026 01:14:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5b6dcacd9e5b109b187552ae1638feeb9e37b2820d5c800d3d3bd6aad9ee4574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96487cc59e8ffcd1f9969c68cb2c300890224c53841179edd15b9a902ba644e0`

```dockerfile
```

-	Layers:
	-	`sha256:42d9f1d76984f0a1b3d2fb035317ecbab37e15b6cfa3a26db5ff13cb14e71083`  
		Last Modified: Thu, 20 Aug 2026 01:14:25 GMT  
		Size: 2.4 MB (2368097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab86bc171ccae8b231a4ece48a94db10a1790eeba33d344345f064ae0227c7c`  
		Last Modified: Thu, 20 Aug 2026 01:14:24 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:971cd0dbdddfd438f13ef31b8495dbd1009190918453a1dee4cf3a1311cb7d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187052502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2785f9b6d19756d2f67fd52c382abfc4c2ed1749c117a1f43a560e74da3af13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:33:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:33:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:33:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:33:54 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:33:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:33:54 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:35:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:35:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:35:08 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:35:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:35:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:35:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:35:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10dbf09e1165809795a39aeffa14bf32d203c2e410254f636fc47cc225f6e696`  
		Last Modified: Tue, 18 Aug 2026 20:35:35 GMT  
		Size: 135.9 MB (135910395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f1cd51ca6b6f04a4abfdf42e1c0c2e991d6a2bb5ceeb442a36826dc4a54d4e`  
		Last Modified: Tue, 18 Aug 2026 20:35:33 GMT  
		Size: 16.8 MB (16779907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d14ff660a958f4e95f35360a28ec6eee9b0aec078f35c18272bc6b2f63331af`  
		Last Modified: Tue, 18 Aug 2026 20:35:32 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935697d0aef1247cf21269ad5d416c2d85baa9703cbc84aa5ec08266f1e1f7c7`  
		Last Modified: Tue, 18 Aug 2026 20:35:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4d2c375adf389172ccfa062ed4266a87ca0158484bbc2933c6f65db35c4d5931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f95a811f80ff675e0adc568ca05d06affad0032d630c2d7ad2c634fd323d17a`

```dockerfile
```

-	Layers:
	-	`sha256:670714b584a1c56a29af3c4835fd56ce246a13ba27d90e55df4011d054cd1f75`  
		Last Modified: Tue, 18 Aug 2026 20:35:32 GMT  
		Size: 2.4 MB (2363544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b6daae9da9bd522373a6c18f7243d7c4ecccc681a3888b4cb83ece719ed8ced`  
		Last Modified: Tue, 18 Aug 2026 20:35:32 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json
