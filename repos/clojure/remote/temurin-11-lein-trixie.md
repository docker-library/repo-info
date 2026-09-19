## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:69a5fd5a7f4fb66e0c5429e5eec1886a0f209060abf66c28ed62cbea2ebc3e49
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cb0ccb83200be70bb52cac785977e1b348a0bb7add7bdc9547e9f8f6030270fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218653078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257bf3fe3c2f8ca677524ec4aa5c05c4d47fbab7b96a07148e8ef5807fffe0d0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:13:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:13:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:13:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:13:22 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:13:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:13:22 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:14:30 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:14:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:14:31 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0dbd7713dbef1ea7b922fdb12d324fc85c140512d31fdd05400633df7eb80ac`  
		Last Modified: Sat, 19 Sep 2026 01:14:50 GMT  
		Size: 145.9 MB (145861346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f417ca21c7f63c71e6b3d5d8a5c90c9df1c0e4eb8b9836375289db5d018db35`  
		Last Modified: Sat, 19 Sep 2026 01:14:47 GMT  
		Size: 18.9 MB (18896822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b533356234c31bda80218541636981eb404eb0fc4cc8e852b6f0e0b4aeca77`  
		Last Modified: Sat, 19 Sep 2026 01:14:47 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:66ce3866790741282fdd3e7d755d653540456884327cbf07c95d42c1eb20f8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb00b30f2f885909bf3801299f4966bc7cbe6002db2ff83636a8361c07f4f04`

```dockerfile
```

-	Layers:
	-	`sha256:33eb4109138f4c8e7654f8bf2529d7e1b0df15c24a688e4444e5b7bca4526634`  
		Last Modified: Sat, 19 Sep 2026 01:14:47 GMT  
		Size: 3.8 MB (3847255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17af4e0579ee10fc9bc114cd9c98afe9af372711577caef39f9367d6b2d89e08`  
		Last Modified: Sat, 19 Sep 2026 01:14:46 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c09acac77376271977d1e961b4d572f61d77d9f2977c70d7ef3f05d1782f67ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215675131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d0b63909ca266d3032fb4ba2c3ec62e02e4ba20d4cda7582267a22dc06644c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:20:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:20:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:20:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:20:54 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:20:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:20:54 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:22:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:22:12 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:22:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:22:14 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ce86a087b9ce36ad6aff4f2beabc93a733008eeae521f4cc9dd67e9472b127`  
		Last Modified: Sat, 19 Sep 2026 01:22:23 GMT  
		Size: 142.6 MB (142566295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0924b547ab5d396327bca9dc3b65ab98832fc2baae1d4146b906472bca91518d`  
		Last Modified: Sat, 19 Sep 2026 01:22:31 GMT  
		Size: 18.8 MB (18844748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9b21baad90f8d34f5ce330a1e92555803d9e1d19e4d448b98b56b10b6943a4`  
		Last Modified: Sat, 19 Sep 2026 01:22:30 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ea7a99248de3b639796251f78ddd77822bde78da8178ea1996c124363ff62615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1afc2d4fb4d21d2eb86ef51c77f4d48d5a1adf1768ba889952851c33d45268`

```dockerfile
```

-	Layers:
	-	`sha256:f71cef9ae9e84cadac497e420a77d8ff24e179237cf52d6050a007b030f82bb6`  
		Last Modified: Sat, 19 Sep 2026 01:22:30 GMT  
		Size: 3.8 MB (3848113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b93fab49ff8b1b4cd8b20eb5c17895188fc43ac131071ad3151f5487a735fead`  
		Last Modified: Sat, 19 Sep 2026 01:22:30 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f67edc6de1dd8d3bd51450075d68aa0718230e56496494f6b80c2161001023c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209742306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c097641017044776abcd0848d0120bf6246032e10f76e110448b02b5a5bd5919`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:42:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:42:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:42:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:42:03 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:42:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:42:03 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:45:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:45:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:45:44 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:45:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:45:50 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe82795a346148567fa5ea4d5a82702752cd07a4d8f174243f4ec32186837bb`  
		Last Modified: Sat, 19 Sep 2026 07:46:25 GMT  
		Size: 133.1 MB (133090122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d107069b799ad01acb75e02af58612f63e7a36779d4e95cb9a101ab78d2300f4`  
		Last Modified: Sat, 19 Sep 2026 07:46:23 GMT  
		Size: 18.9 MB (18941855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7868c5d72d2c20fa7ff45113c86d34a7170f677696717782860b76a72323b07e`  
		Last Modified: Sat, 19 Sep 2026 07:46:22 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:62942921878d1ed0de3ec00fb7410e8afa1c92d987f1de580e7b8879ce7541e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2f0e5304f408823760ed59f4f04424d459d39f5f7ca8f5539456796796292`

```dockerfile
```

-	Layers:
	-	`sha256:b5ed847b0789e25361c148b4bab48918a9f43e783970e9ae143b72858779405e`  
		Last Modified: Sat, 19 Sep 2026 07:46:22 GMT  
		Size: 3.8 MB (3847638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed443b919e844c560c07d0fd13f8a76647c5bf0c07bf9d23ea0b50f1c8858ed4`  
		Last Modified: Sat, 19 Sep 2026 07:46:22 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json
