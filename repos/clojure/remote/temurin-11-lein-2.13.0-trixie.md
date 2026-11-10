## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:4f60f4d126c28b41340decc9915087b75242354cf76b0cd7e0f86dee0a679c6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:1b709bfb397fd598babad2239d7f9a174d2e6b93f9014b857b893998e7f23c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218734290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2675d92dfc0faddcf27ce5a3a00879e2df9034afaa36d32abc2873ad73dbd452`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:35:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:35:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:35:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:35:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:35:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:35:33 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:36:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:36:48 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:36:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:36:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fd96b27535efb272b61cbff904024bc8a125c2bc33c5b13c780ffce344b498`  
		Last Modified: Tue, 10 Nov 2026 00:37:08 GMT  
		Size: 145.9 MB (145921630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5571fa62ff7c7d3066b95e85f518775b8b56d65bd1ec76335d3f372310f9e1`  
		Last Modified: Tue, 10 Nov 2026 00:37:05 GMT  
		Size: 18.9 MB (18884938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929228c25ecd13fdafeff6adfdb56f02a16caab07989d5c1ca8512b5c32b87f2`  
		Last Modified: Tue, 10 Nov 2026 00:37:05 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:526b4b331512009aded2e6af23219922f6db4692752c797dfaf39cd8a7cb9115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3861714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75444f7982d7b9dbe75e7c4acad5e93fa6df3516847c187c331bca8b1537717d`

```dockerfile
```

-	Layers:
	-	`sha256:83df58747d95c03b7031b556c9ebef719ccb9cdeaee55a93957b68f81204eb31`  
		Last Modified: Tue, 10 Nov 2026 00:37:05 GMT  
		Size: 3.8 MB (3845980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7806792b07d56c01e22ef746f37456cdbf2f61ce149d210cba4dcd817f1a7416`  
		Last Modified: Tue, 10 Nov 2026 00:37:04 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8e58d00e22bcf74aa07093b5706e837ea14654fa2ed48dccd8589c6a6f66936a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215757733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c911ec51961ef63e6ac363ad2e5c890403936580d9913e1feb546bc56a74c2`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:40 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:34:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:34:40 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:02 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:36:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:36:02 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:36:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:36:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d0505b99a2635e3be0ea65a93dac5fa0833ca7d5e6ef8ceff9afa361b38510`  
		Last Modified: Tue, 10 Nov 2026 00:36:24 GMT  
		Size: 142.6 MB (142620973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5453a7c868a7b8313b5c88e51223e6cafaaef6047e6cdae29631f575c50e0c7`  
		Last Modified: Tue, 10 Nov 2026 00:36:21 GMT  
		Size: 18.8 MB (18842947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d64e33697c66b0d616f31b24e5daec009802c3109f87a56879048dc4b177563`  
		Last Modified: Tue, 10 Nov 2026 00:36:20 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:be10725ae6571d288e7857d4060ce867642078d33e6cde1e45d56ed881cc4a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6abc00d4299e07129a8ac9b9bc5f0722447de67346571cb804af6233c05bacc7`

```dockerfile
```

-	Layers:
	-	`sha256:9f4da2663f6c7ddb046662f64285c0ca1b8947c8c636593b3df072a53ddf38de`  
		Last Modified: Tue, 10 Nov 2026 00:36:20 GMT  
		Size: 3.8 MB (3846838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:180e921264f561edbca6691d2ecba4ea65e577d2ede23568a75e749b23cc5809`  
		Last Modified: Tue, 10 Nov 2026 00:36:20 GMT  
		Size: 15.9 KB (15854 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:232f9579e623a140e8e6333379e4d15739932213ea16090cc0fc80650e5e3c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208953252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3f37c6215b7bb9e0e283db870e8a693dfc431d3a70327a6a3e2b75ccc53f6b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:11:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:11:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 02:11:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 02:11:38 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:16:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 02:16:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 02:16:22 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 02:16:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:16:26 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e848f47e2379d271031644498682189f3d1be36f3a9a665e3f72936b6232`  
		Last Modified: Tue, 10 Nov 2026 02:17:05 GMT  
		Size: 132.3 MB (132272184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b871bd81cd21f2db61616452428867a2370c1180fbc744ba7673b6af5fa3b2b6`  
		Last Modified: Tue, 10 Nov 2026 02:17:02 GMT  
		Size: 18.9 MB (18940249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5174139712925f20be5d72eabed491a69f618a3cfea1278fbd14e8f1235b4f0c`  
		Last Modified: Tue, 10 Nov 2026 02:17:02 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8b4d5612d087a6c4130fc3fac791a39fa826f138d2cda25c352fddbf1cf4d3ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3860895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8118217c123a194d6fbd137eaebb75198474a4fb5b3b53c09c118a6c420fd963`

```dockerfile
```

-	Layers:
	-	`sha256:109195660c87732aa160a13877ae2d46f66a210b0de569008c0ca974021d5ca6`  
		Last Modified: Tue, 10 Nov 2026 02:17:02 GMT  
		Size: 3.8 MB (3845117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ab7f801d0b9ea1faadf7a7206c554ed2f2095ee711e22c55ae5aad66d967abb`  
		Last Modified: Tue, 10 Nov 2026 02:17:01 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
