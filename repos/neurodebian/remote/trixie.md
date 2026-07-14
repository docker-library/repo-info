## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:9af790a0469f8405c7c7c9e9dfb36ca1d6d87ff11797098fe0ed390b67e914f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:trixie` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6e5055393a816e6545cec22c90301632be214a80a636775067b6207a7536884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59699967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c570dbfa7cd7e8b170fe7d4a22f96697f3f14a5abcf051a85b02db7da6e8e407`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb7125a2b97bfd874ed48edbeceda28a113fc6368ba2f8c422f1d26985ffe9a`  
		Last Modified: Tue, 14 Jul 2026 01:47:21 GMT  
		Size: 10.3 MB (10294093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112c1141260149b45373e70becbf01aaccfbe567d9ef1f261b65bd87149577db`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9832854fa910eeec01982a3a64d64afb01c7a754f16d16eda6a8180d66b5e33c`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63138f0f8ad09a95dbab1c8257f2178bce09e1e0926c0eae78d478be61ff706`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 90.4 KB (90399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:be38e98eb1ea7f87546ce0258811eb7c3ad54b903650d103a037131dc380b37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f3317f89d2617feb6ef969223eb41ab18dac19fb00c8ce2a32e2605cbd1de`

```dockerfile
```

-	Layers:
	-	`sha256:c7661a9f2771fd7d85ac39744fef5f13079f848f19cb1c7e8f5fd84d4ead53a9`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 3.6 MB (3614218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bc4f26daa58f0175ef3affec27ca16f18c3424f24fa3b15fc41cad5124b4333`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:64d582a5d039579fa8b6b80c6861141086ef4ff80a57e0e2094ff8d5e191fe20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59846979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78985e182948116d3a3f19392ee151073e477ef117c25170c0940863e865bce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998dd9c3404edb1c257fa3ac74b94abe1cbbb56a5a61b86baf9eb3f8ceefa3ee`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 10.1 MB (10078850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dd83b3c43c0c8336c758c9146febe7c85ddc16694ab5cff15a5870d00184cf`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d5ff97801089c05e52ad9313e72fd67bf4f8e51110943885ed83e4ee7a102c0`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28b4fac948ad13178ab3c9a43b6146352801a96468e04460c467f4eff6cce3`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 91.0 KB (91043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:47db71744232a7d4d4718f36dbcbd19e3736cf1e7e6e2c12bfc4ceae53ae4923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be31fdec34f8cb5921fec791908a53e370e9378344c84ff936ef16684cb3b9f`

```dockerfile
```

-	Layers:
	-	`sha256:67c6d6b3c5896b93589b3e6fe67468f4f8a205c858b26ef6211c5418dbe6d8e0`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 3.6 MB (3615108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4b674c386b165834b76361eca729c5abf53d7fc81e4b32e6e3f0337578ad2fe`  
		Last Modified: Tue, 14 Jul 2026 01:50:40 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:07118ca5090a5cc92f507d2a1b4106df6f3999a7334c76adc4a12766632f3c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf60c4b8c5a2cb42257c67eae93e12a2cdc70f08f1d4c8cf0a13e3acfe71cdc9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff8c7d4c72f649648ab293a2aec475b50fb99b76c10ba63e76c08a2ebbea741`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 10.5 MB (10468156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d607a4edde04e26fcfe2b20c9276d66b158a4aee47280c0c050f9987874fe74`  
		Last Modified: Tue, 14 Jul 2026 01:49:14 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ba916cf350814c004d8fd46544d5a1fb83ae526114f22311adf635701cb971`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b5f9e7613185669dc9e4c121b3ad8e8b2b42331332db2ad2c720dfa6dbd8c0`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 90.7 KB (90748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4cd200513f3fbff5472c040ea593c67b666556cd05a3755d2ec503a11c9c1b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0469bc42a43ff5585aad830c59f5252162827f7018150868df9a7e90d5665065`

```dockerfile
```

-	Layers:
	-	`sha256:cf5a12b152b342191aff6985f9e525d3ea3e23078aa1b45448efeaa216bbc1b9`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 3.6 MB (3612166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76106827f65b5612a7d9150284968b1786b970569050a989f78fb6387554d7a7`  
		Last Modified: Tue, 14 Jul 2026 01:49:15 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json
