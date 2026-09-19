## `clojure:lein-2.13.0`

```console
$ docker pull clojure@sha256:38b4de4cec3d639d3f43679b196c5c1c50d6a4949f8880dd8c81dc4e2b15df56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:db59cd2b03913f4a1514540102ccb68fdb2bcb80d3ba770cbcdf9f8aa79e0b6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165768123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb25a01ddd314e81c714e1297eea7ce8e65be9c38438755dbfbe83728a1e793`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:16:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:16:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:16:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:16:40 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:16:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:16:40 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:17:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:17:44 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:17:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:17:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:17:45 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:17:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c18e836c5297980f35e143259316867a803172c398ebc5a5b4e9d0af0a2576f`  
		Last Modified: Sat, 19 Sep 2026 01:18:04 GMT  
		Size: 92.6 MB (92615129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b2edd3cdc7971c01eeda944abce355c5e29fb935f6bd2216a3d3f9b40c145d`  
		Last Modified: Sat, 19 Sep 2026 01:18:02 GMT  
		Size: 20.1 MB (20133960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd42fa8c7358dd16f16ea94c245738143f0e5bd8faf84cc468701dce61a577a2`  
		Last Modified: Sat, 19 Sep 2026 01:18:02 GMT  
		Size: 4.5 MB (4515166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad29ec9cecfaffbe2862d1404fc362e7df0b703dd763b712dc2f4e6e55f6318`  
		Last Modified: Sat, 19 Sep 2026 01:18:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:770cab96e3a1a6d8f54a293f1d5128b4e5429c0c0a6e8027c105969018872725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8676c9ee197cb9b516e09e0a7d68d0377c7ad78d25c3bd410c9deb7aa82431`

```dockerfile
```

-	Layers:
	-	`sha256:c7c83f9f0ca303f86cd7a81ccd3252f1eae7eda246d597447621a03ea4b8595c`  
		Last Modified: Sat, 19 Sep 2026 01:18:02 GMT  
		Size: 4.3 MB (4258585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d2a8d957cd0576a718612a5893eece3ad22a30b09fb294c22a3c5d8e6c95eea`  
		Last Modified: Sat, 19 Sep 2026 01:18:02 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:db57d2378f5bee29fd7f14f4c8312374128f6b8b7fde1844d051384891f4b786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164394433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cc2ac6287830cd14af023fd703d4f7886144a9eaf9ceb8204bbbf25e27eed4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:23:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:57 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:23:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:23:57 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:25:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:25:04 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:25:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:25:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3d911f42c7b5b542fcb3e5161b6ccbfb7b03f90c78a45eb0a53b6cde333e51`  
		Last Modified: Sat, 19 Sep 2026 01:25:24 GMT  
		Size: 91.5 MB (91532236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969fdaf1cdf936b52113377955e2e16704a0949109246021eb2c412d822e8ee8`  
		Last Modified: Sat, 19 Sep 2026 01:25:23 GMT  
		Size: 20.0 MB (19956646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f6184bbb5c0ee4b41117d114cd8b2681c0e6cd22253a8b5cb871819308af8e`  
		Last Modified: Sat, 19 Sep 2026 01:25:23 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ff2a98c55042eb9777163014d838c99375d99e10976f118efeba2f5f6c4787`  
		Last Modified: Sat, 19 Sep 2026 01:25:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:343fe91d8edbaf546c4e8e30d59742b045c1ab564839c11b809013f8d7e30199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:487b6ae25f8cc9b0bd65fd03e9917d4ed8babdf93452bbe535d798056fae41e5`

```dockerfile
```

-	Layers:
	-	`sha256:17aa9a2ee20548f7dc6cc2c47205ee1955ae8648ccd16c777e88ec2f972b8215`  
		Last Modified: Sat, 19 Sep 2026 01:25:23 GMT  
		Size: 4.3 MB (4258269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74e6d67ca657c4f7326b778af1b48dbfabe9b43d5d68fa0d777bfcc38ddce436`  
		Last Modified: Sat, 19 Sep 2026 01:25:22 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:c076e3da8458c9538229e149d611eb0d9122fc0c9db011cfd2cd9ce7d524387a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168461968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efe44b068d69688d665d6ce5b1f2998de1ba08c97293b3546512cf2deb6da0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 03 Sep 2026 23:58:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 03 Sep 2026 23:58:55 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 04 Sep 2026 00:02:44 GMT
ENV LEIN_ROOT=1
# Fri, 04 Sep 2026 00:02:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:11:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:11:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:11:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3773e458eb79072928ad9cf963ff5e5431e28ee9d9937b28b7e31b8272cf8e1`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 91.3 MB (91255825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17787f631a015fed889a35c730ca329f60ae02a4d8ef800df76a3325020ab9e8`  
		Last Modified: Fri, 04 Sep 2026 00:04:35 GMT  
		Size: 20.3 MB (20348701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f854bf7258a3e8cf3c876c36f12a11f4f075274de2df4c65f4ea55f72ec6773`  
		Last Modified: Fri, 04 Sep 2026 00:04:34 GMT  
		Size: 4.5 MB (4515249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cea0b096d8581caa9016a5924d8cf6ad0c45b74d57f3382e35907e16acc5a9c`  
		Last Modified: Wed, 09 Sep 2026 11:12:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:47990201edd30af4bd7c7e6f23190210b54009c00bf8ae53aa38a7da2fb39e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4263467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7b1d07e5416091453a30d0f27d04cd4d1a34454dd3df7f6252cc171a174db6`

```dockerfile
```

-	Layers:
	-	`sha256:0ce5da22539b0361955f738e774882e11b4a239aa879333f3d4fabb171823713`  
		Last Modified: Wed, 16 Sep 2026 10:55:32 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2593bab734cda2a9e8dff1b9bed7167584dec4fd1ef62f50376b56f7e76bf1ef`  
		Last Modified: Wed, 16 Sep 2026 10:55:31 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
